# IUP::ProgressBar example

use strict;
use warnings;

use IUP ':all';

my $speed = 0.00001;
my $running;

my $pixmap_play = [
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2],
  [2,2,2,2,2,2,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
];

my $pixmap_start = [
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,1,1,2,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2],
  [2,2,2,2,1,1,2,2,2,2,2,2,1,1,1,1,2,2,2,2,2,2],
  [2,2,2,2,1,1,2,2,2,2,1,1,1,1,1,1,2,2,2,2,2,2],
  [2,2,2,2,1,1,2,2,1,1,1,1,1,1,1,1,2,2,2,2,2,2],
  [2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2],
  [2,2,2,2,1,1,2,2,1,1,1,1,1,1,1,1,2,2,2,2,2,2],
  [2,2,2,2,1,1,2,2,2,2,1,1,1,1,1,1,2,2,2,2,2,2],
  [2,2,2,2,1,1,2,2,2,2,2,2,1,1,1,1,2,2,2,2,2,2],
  [2,2,2,2,1,1,2,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
];

my $pixmap_rewind = [
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,1,2,2,2,2,1,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,1,1,2,2,2,1,1,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,1,1,1,2,2,1,1,1,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,1,1,1,1,2,1,1,1,1,2,2,2,2,2,2,2],
  [2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,1,1,1,1,2,1,1,1,1,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,1,1,1,2,2,1,1,1,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,1,1,2,2,2,1,1,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,1,2,2,2,2,1,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
];

my $pixmap_forward = [
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,1,2,2,2,2,1,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,1,1,2,2,2,1,1,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,1,1,1,2,2,1,1,1,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,1,1,1,1,2,1,1,1,1,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2],
  [2,2,2,2,2,2,2,1,1,1,1,2,1,1,1,1,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,1,1,1,2,2,1,1,1,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,1,1,2,2,2,1,1,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,1,2,2,2,2,1,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
  [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
];

my $img_start   = IUP::Image->new( 1=>"0 0 0", 2=>"BGCOLOR", pixels=>$pixmap_start );
my $img_play    = IUP::Image->new( 1=>"0 0 0", 2=>"BGCOLOR", pixels=>$pixmap_play );
my $img_forward = IUP::Image->new( 1=>"0 0 0", 2=>"BGCOLOR", pixels=>$pixmap_forward );
my $img_rewind  = IUP::Image->new( 1=>"0 0 0", 2=>"BGCOLOR", pixels=>$pixmap_rewind );

my $gauge = IUP::ProgressBar->new( EXPAND=>"YES" );

sub idle_cb {
  my $value = $gauge->VALUE;
  $value += $speed;
  $value = $gauge->MIN if ($value > $gauge->MAX);
  $gauge->VALUE($value);
  return IUP_DEFAULT;
}

sub btn_pause_cb {
  #xxx how to check existing idle handler?
  #xxxif (!IupGetFunction("IDLE_ACTION")) {
  if ($running) {
    IUP->SetIdle(undef);
    $running = 0;
  }
  else {
    IUP->SetIdle(\&idle_cb);
    $running = 1;
  }
  
  return IUP_DEFAULT;
}

sub btn_start_cb {
  $gauge->VALUE($gauge->MIN);
  return IUP_DEFAULT;
}

#xxxSERIOUSBUG
#xxxsomething causes progressbar3.pl to hangup/crash (after pressing accel/decel)
sub btn_accelerate_cb {
  $speed *= 2.0;
  $speed = 1.0 if ($speed > 1.0);
  warn "a.speed=$speed\n";
  warn "value=",$gauge->VALUE,"\n";
  return IUP_DEFAULT;
}

sub btn_decelerate_cb {
  $speed /= 2.0;
  warn "d.speed=$speed\n";
  warn "value=",$gauge->VALUE,"\n";
  return IUP_DEFAULT;
}

my $btn_start      = IUP::Button->new( TITLE=>"start", ACTION=>\&btn_start_cb,
                                       IMAGE=>$img_start, TIP=>"Start" );
my $btn_pause      = IUP::Button->new( TITLE=>"pause", ACTION=>\&btn_pause_cb,
                                       IMAGE=>$img_play, TIP=>"Pause" );
my $btn_accelerate = IUP::Button->new( TITLE=>"accelerate", ACTION=>\&btn_accelerate_cb,
                                       IMAGE=>$img_forward, TIP=>"Accelerate" );
my $btn_decelerate = IUP::Button->new( TITLE=>"decelerate", ACTION=>\&btn_decelerate_cb,
                                       IMAGE=>$img_rewind, TIP=>"Decelerate" );

my $hbox = IUP::Hbox->new( child=>[
             IUP::Fill->new(), 
             $btn_pause,
             $btn_start,
             $btn_decelerate,
             $btn_accelerate,
             IUP::Fill->new()
           ]);

my $vbox = IUP::Vbox->new( child=>[$gauge, $hbox], MARGIN=>"10x10", GAP=>5 );

my $dlg = IUP::Dialog->new( child=>$vbox, TITLE=>"IUP::ProgressBar" );

IUP->SetIdle(\&idle_cb);
$running = 1;
  
$dlg->ShowXY(IUP_CENTER, IUP_CENTER);
IUP->MainLoop();
