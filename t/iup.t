#!perl -T

use Test::More tests => 1;

is( 1, 1 );

use IUP;
use Data::Dumper;

my $imgRGB = [
  128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,
  128,128,128,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128,
  128,128,128,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128,
  128,128,128,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128,
  128,128,128,255,255,255,255,255,255,255,255,255,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128, 
  128,128,128,255,255,255,255,255,255,255,255,255,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128, 
  128,128,128,255,255,255,255,255,255,255,255,255,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128, 
  128,128,128,255,255,255,255,255,255,255,255,255,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128, 
  128,128,128,255,255,255,255,255,255,255,255,255,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128, 
  128,128,128,255,255,255,255,255,255,255,255,255,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128, 
  128,128,128,255,255,255,255,255,255,255,255,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128, 
  128,128,128,255,255,255,255,255,255,255,255,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128, 
  128,128,128,255,255,255,255,255,255,255,255,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128, 
  128,128,128,255,255,255,255,255,255,255,255,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128, 
  128,128,128,255,255,255,255,255,255,255,255,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128, 
  128,128,128,255,255,255,255,255,255,255,255,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,128,128,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128,
  128,128,128,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128,
  128,128,128,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128,
  128,128,128,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,128,128,128,
  128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,
];

my $imgRGBA = [
  000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255,
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255,
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255,
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255, 
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255, 
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255, 
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255, 
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255, 
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255, 
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255, 
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255, 
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255, 
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255, 
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255, 
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,000,000,255,255,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,255,255,255,192,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255,
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255,
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255,
  000,000,000,255,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,255,
  000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,000,000,000,255,
];

my $img20x20_data1 = [
  5,16,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
  5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
  5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
  5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
  5,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,0,0,0,5, 
  5,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,0,0,0,5, 
  5,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,0,0,0,5, 
  5,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,0,0,0,5, 
  5,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,0,0,0,5, 
  5,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,0,0,0,5, 
  5,0,0,0,3,3,3,3,3,3,4,4,4,4,4,4,0,0,0,5, 
  5,0,0,0,3,3,3,3,3,3,4,4,4,4,4,4,0,0,0,5, 
  5,0,0,0,3,3,3,3,3,3,4,4,4,4,4,4,0,0,0,5, 
  5,0,0,0,3,3,3,3,3,3,4,4,4,4,4,4,0,0,0,5, 
  5,0,0,0,3,3,3,3,3,3,4,4,4,4,4,4,0,0,0,5, 
  5,0,0,0,3,3,3,3,3,3,4,4,4,4,4,4,0,0,0,5,
  5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
  5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
  5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
  5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
];

my $img20x20_data2 = [
  5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
  5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
  5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
  5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
  5,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,0,0,0,5, 
  5,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,0,0,0,5, 
  5,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,0,0,0,5, 
  5,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,0,0,0,5, 
  5,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,0,0,0,5, 
  5,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,0,0,0,5, 
  5,0,0,0,3,3,3,3,3,3,4,4,4,4,4,4,0,0,0,5, 
  5,0,0,0,3,3,3,3,3,3,4,4,4,4,4,4,0,0,0,5, 
  5,0,0,0,3,3,3,3,3,3,4,4,4,4,4,4,0,0,0,5, 
  5,0,0,0,3,3,3,3,3,3,4,4,4,4,4,4,0,0,0,5, 
  5,0,0,0,3,3,3,3,3,3,4,4,4,4,4,4,0,0,0,5, 
  5,0,0,0,3,3,3,3,3,3,4,4,4,4,4,4,0,0,0,5,
  5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
  5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
  5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
  5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
];

my $dialog; #main dialog
my $c;

sub item_close_cb {
  my ($self, %args) = @_;
  warn "CB[quit]: ACTION";
  warn "CB[quit]: " . $self->ihandle;
  warn "CB[quit]: title=" . $self->GetAttribute('TITLE');
  return IUP_CLOSE;  
}

sub item_remove_cb {
  my ($self, %args) = @_;
  warn "CB[remove]: ACTION";
  warn "CB[remove]: " . $self->ihandle;
  warn "CB[remove]: title=" . $self->TITLE;
  warn "CB[remove]: canvas.visible=" . $c->VISIBLE;
  warn "CB[remove]: canvas.scrollbar=" . $c->SCROLLBAR;
  $dialog->TITLE('Y'); 
  $c->BGCOLOR('255 0 128');
  return IUP_DEFAULT;  
}

sub button_cb {
 my ($self, @args) = @_;
 warn "CB[button_cb]: BUTTON " . Dumper(\@args);
}

my $b = IUP::Button->new();
my $code = \&item_close_cb;

my $im1 = IUP::Image->new(WIDTH=>20, HEIGHT=>20, pixels=>$img20x20_data1, 0=>"100 0 0");
#my $im2 = IUP::Image->new(WIDTH=>20, HEIGHT=>20, pixels=>$img20x20_data2);
my $im_rgb = IUP::Image->new(WIDTH=>20, HEIGHT=>20, pixels=>$imgRGB);
my $im_rgba = IUP::Image->new(WIDTH=>20, HEIGHT=>20, pixels=>$imgRGBA);

my $i1 = IUP::Item->new(TITLE => "Append");
my $i2 = IUP::Item->new(TITLE => "Insert", ACTION=>sub{IUP->Message('Hi!')} );
my $i3 = IUP::Item->new(TITLE => "Remove", ACTION=>\&item_remove_cb);
my $i4 = IUP::Item->new(TITLE => "Quit", ACTION=>\&item_close_cb);
#$i4->SetCallback( ACTION=>\&item_close_cb ), 
#$i3->ACTION( \&item_remove_cb ), 

my $sub1 = IUP::Submenu->new( TITLE=>'Sub Test', child=>IUP::Menu->new( child=>[
  IUP::Item->new(TITLE => "It1", ACTION=>sub{IUP->Message('It1!')}, IMAGE=>$im_rgba ),
  IUP::Item->new(TITLE => "It2", ACTION=>sub{IUP->Message('It2!')}, IMAGE=>$im1),
  IUP::Item->new(TITLE => "It3", ACTION=>sub{IUP->Message('It3!')}, IMAGE=>$im_rgb ),
]));

my $m = IUP::Menu->new(child => [$i1, $sub1, $i2, $i3, $i4]);
#my $m = IUP::Menu->new(child => [$i1]);

$c = IUP::Canvas->new(BGCOLOR=>'128 128 128', SCROLLBAR=>'YES', BUTTON_CB => \&button_cb);

$dialog = IUP::Dialog->new(child => $c, MENU=>$m);

$dialog->SetAttribute( SIZE=>'QUARTERxQUARTER', MENU=>$m );
$dialog->TITLE('XXaaaaaaaaaaaaa'); 
$dialog->TITLE(undef); 

$dialog->ShowXY(30,30);

diag "Before IupMainLoop";
IUP->MainLoop();
diag "After IupMainLoop";
