#!/usr/bin/perl -w

# $UNIVERSAL::debug = 1;

use KBS2::ImportExport;
use Manager::Misc::Light;
use PerlLib::SwissArmyKnife;
use UniLang::Util::TempAgent;
use System::Cyc::Util;

my $ie = KBS2::ImportExport->new();

my $light = Manager::Misc::Light->new();

my $contents = read_file('ontology.notes');
my $domain = $light->Parse
  (
   Contents => $contents,
  );

my $tempagent = UniLang::Util::TempAgent->new
  (
   RandName => "world-state-monitor-temp",
  );

print Dumper();
foreach my $sentlist (@$domain) {
  my $sent = join(' ',@$sentlist);
  print "\n\n<$sent>\n"; # if $UNIVERSAL::debug;
  my $contents = '(cyclify '.QuoteForCyclify(Text => $sent).')';
  print Dumper({Contents => $contents}) if $UNIVERSAL::debug;
  my $m1 = $tempagent->MyAgent->QueryAgent
    (
     Receiver => "Cyc",
     Data => {
	      Connect => 1,
  	      _DoNotLog => 1,
  	     },
    );
  print ".\n" if $UNIVERSAL::debug;
  my $m2 = $tempagent->MyAgent->QueryAgent
    (
     Receiver => "Cyc",
     Data => {
	      SubLQuery => $contents,
  	      _DoNotLog => 1,
  	     },
    );
  print ".\n" if $UNIVERSAL::debug;
  foreach my $interlingua (@{$m2->{Data}{Result}[0]}) {
    my $res = $ie->Convert
      (
       Input => [$interlingua],
       InputType => 'Interlingua',
       OutputType => 'CycL String',
       );
    if ($res->{Success}) {
      print $res->{Output}."\n\n";
    } else {
      print "No result\n\n";
    }
  }
  print ".\n" if $UNIVERSAL::debug;
}
