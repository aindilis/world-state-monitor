package WSM;

use Moose;
use WSM::Formalog;

use BOSS::Config;
# use MyFRDCSA;
use PerlLib::SwissArmyKnife;

has Config =>
  (
   is => 'rw',
   isa => 'BOSS::Config',
  );

has Formalog =>
  (
   is => 'rw',
   isa => 'WSM::Formalog',
   default => sub {
     WSM::Formalog->new();
   },
  );

sub BUILD {
  my ($self,$args) = @_;

  my %args = %$args;
  my $specification = "
	-u [<host> <port>]	Run as a UniLang agent

	-w			Require user input before exiting
";
  # $UNIVERSAL::systemdir = ConcatDir(Dir("internal codebases"),"wsm");
  $self->Config
    (BOSS::Config->new
     (Spec => $specification,
      ConfFile => ""));
  my $conf = $self->Config->CLIConfig;
  if (exists $conf->{'-u'}) {
    $UNIVERSAL::agent->Register
      (Host => defined $conf->{-u}->{'<host>'} ?
       $conf->{-u}->{'<host>'} : "localhost",
       Port => defined $conf->{-u}->{'<port>'} ?
       $conf->{-u}->{'<port>'} : "9000");
  }
}

sub Execute {
  my ($self,%args) = @_;
  my $conf = $self->Config->CLIConfig;
  if (exists $conf->{'-u'}) {
    # enter in to a listening loop
    $self->Formalog->Execute();
    $self->Formalog->Loop
      (
       Callback => sub {$UNIVERSAL::agent->Listen(TimeOut => 1.0)}
      );
    # while (1) {
    #   $UNIVERSAL::agent->Listen(TimeOut => 10);
    # }
  }
  if (exists $conf->{'-w'}) {
    Message(Message => "Press any key to quit...");
    my $t = <STDIN>;
  }
}

sub ProcessMessage {
  my ($self,%args) = @_;
  my $m = $args{Message};
  my $it = $m->Contents;
  if ($it) {
    if ($it =~ /^echo\s*(.*)/) {
      $UNIVERSAL::agent->SendContents
	(Contents => $1,
	 Receiver => $m->{Sender});
    } elsif ($it =~ /^(quit|exit)$/i) {
      $UNIVERSAL::agent->Deregister;
      exit(0);
    }
  }
  if (exists $m->{Data}{StartServer}) {
    # $self->StartServer();
    # $UNIVERSAL::agent->QueryAgentReply
    #   (
    #    Message => $m,
    #    Data => {
    # 		_DoNotLog => 1,
    # 		Result => 'started',
    # 	       },
    # 	);
  }
  if (exists $m->{Data}{Command}) {
    my $command = $m->{Data}{Command};
    if ($command eq 'getCurrentState') {
      
    } elsif ($command eq 'reportLocation') {
      # which context is this?

      # context

      # metacontext information (accessibility relation, etc)

      %{$m->{Data}{CommandArgs}};
    }
  }
}

1;
