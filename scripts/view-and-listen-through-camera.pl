#!/usr/bin/perl -w

use BOSS::Config;
use PerlLib::MySQL;
use PerlLib::SwissArmyKnife;

$specification = q(
	<room>...	Rooms

	-d		Don't listen
);

my $config =
  BOSS::Config->new
  (Spec => $specification);
my $conf = $config->CLIConfig;

my $rooms2ip =
  {
   'crawl space' => 240,
   'computer room (facing east)' => 244,
   'entry way' => 242,
   'computer room (facing south)' => 243,
   'garage south' => 241,
   'garage north' => 245,
  };

my $ip;
foreach my $name (@{$conf->{'<room>'}}) {
  my $chosen;
  if (exists $rooms2ip->{$name}) {
    $chosen = $name;
  } else {
    my @matches;
    foreach my $key (%$rooms2ip) {
      if ($key =~ /$name/) {
	push @matches, $key;
      }
    }
    $chosen = Choose(sort @matches);
  }
  if (defined $chosen) {
    ListenToCam(IP => '192.168.1.'.$rooms2ip->{$chosen});
  } else {
    die "No Camera chosen\n";
  }
}

sub ListenToCam {
  my (%args) = (@_);

  my $seccamfile = '/etc/myfrdcsa/config/security-cameras';
  my $auth = "";
  if (-f $seccamfile) {
    $auth = read_file($seccamfile);
    chomp $auth;
  }
  print "$auth\n";
  print "$args{IP}\n";
  my $extraopts = "";
  if ($conf->{'-d'}) {
    $extraopts = " --no-audio ";
  }
  amy $command = "(cvlc rtsp://$auth\@$args{IP}:554/play2.sdp $extraopts &)";
  print $command."\n";
  system $command;
}
