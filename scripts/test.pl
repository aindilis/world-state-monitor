#!/usr/bin/perl -w

use PerlLib::SwissArmyKnife;
use System::FLORA_2::Python::FLORA_2_SPADE;

my $flora2 = System::FLORA_2::Python::FLORA_2_SPADE->new();

$flora2->loadModule('/var/lib/myfrdcsa/codebases/internal/verber/data/worldmodel/flora-2/model.p');
my $seen = {};
foreach my $result ($flora2->ask('?X:?Y, ?Y:?Z')) {
  # $seen->{$result->{X}} = 1;
  my $skip = 0;
  foreach my $key (keys %$result) {
    $skip = 1 if $result->{$key} =~ /^(_|\()/;
  }
  next if $skip;
  print Dumper($result);
}
# print join("\n", sort keys %$seen)."\n";

# look into providing a prolog translation as well
# FLORA-2, FreeKBS2, PDDL 2.2, ?prolog?

my $rosettaStone =
  [
   ['?a(X)[?b->?c].', '((var-a "X")("[]" ("->" var-b var-c))', ''],
   ['den:officeroom.', '(":" "den" "officeroom")','den - officeroom'], # in :objects
   ['date::text_string.', '("::", "date" "text_string")','date - text-string'], # in :types
   ['dirty[arg1, object]:VerbPredicate.' => '(":" ("dirty" ("[]" ("=>" "arg1" "object"))) "VerbPredicate")',''],
   ['has_door[arg1 => door, arg2 => location, arg3 => location]:VerbPredicate.' => '(":" ("has_door" ("[]" ("=>" "arg1" "door") ("=>" "arg2" "location") ("=>" "arg3" "location"))) "VerbPredicate")','(has-door ?d - door ?l1 - location ?l2 - location)'], # in :predicates, maybe others
   ['has_door(garage_door, garage, outside).', '("has_door" "garage_door" "garage" "outside")','(has-door garage-door garage outside)'], # in :init, maybe others
   # ['pddl_assign(actions, 0).','("pddl_assign" "actions" "0")','(= actions 0)'],
   ['at(7, not(isolated(living_room))).', '("pddl_at" "7" ("not" ("isolated" "living_room")))', '(at 7 (not (isolated living_room)))'], # in :init
  ];
