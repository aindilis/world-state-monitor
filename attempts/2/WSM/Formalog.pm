package WSM::Formalog;

use Data::Dumper;
use Formalog::Util::Prolog;

use Moose;

has Prolog =>
  (
   is => "rw",
   isa => "Formalog::Util::Prolog",
   default => sub {
     chdir "/var/lib/myfrdcsa/codebases/minor/formalog";
     Formalog::Util::Prolog->new
	 (
	  Args => ['-g','consult(t/prolog/t1).'],
	 );
   },
  );

sub Execute {
  my ($self,$args) = @_;
  $self->Prolog->Execute(%$args);
}

1;

