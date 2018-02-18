package WSM::Type::World;

use Moose;

extends 'WSM::Type';

sub Inform7Import {
  # see convert-i7-to-pl.pl
}

sub Inform7Export {
  # see convert-pl-to-i7.pro
}

sub PDDLDomainImport {

}

sub PDDLDomainExport {
  # see convert-pl-to-pddl.pro
}

sub PDDLProblemImport {

}

sub PDDLProblemExport {

}

sub VerbDomainImport {

}

sub VerbDomainExport {

}

sub VerbProblemImport {

}

sub VerbProblemExport {

}

1;
