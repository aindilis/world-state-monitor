package WSM::Type::Condition;

use Moose;

extends 'WSM::Type';

sub holds {
  Condition.holds(c - condition, t - time) (condition C holds at time T)
}

1;
