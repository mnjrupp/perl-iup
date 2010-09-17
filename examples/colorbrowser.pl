# Creates a IupColorBrowser control and updates, through;
# callbacks, the values of texts representing the R, G and B;
# components of the selected color.;

use IUP;

my $text_red = IUP::Text->new();
my $text_green = IUP::Text->new();
my $text_blue = IUP::Text->new();

my $cb = IUP::ColorBrowser->new();

sub cb_update {
  my ($self, $r, $g, $b) = @_;
  $text_red->VALUE($r);
  $text_green->VALUE($g);
  $text_blue->VALUE($b);
}

$cb->DRAG_CB(\&cb_update);
$cb->CHANGE_CB(\&cb_update);

my $vbox = IUP::Vbox->new( child=>[
                 IUP::Fill->new(),
                 $text_red,
                 IUP::Fill->new(),
                 $text_green,
                 IUP::Fill->new(),
                 $text_blue,
                 IUP::Fill->new(),
               ] );

my $dlg = IUP::Dialog->new( child=>IUP::Hbox->new( child=>[$cb, IUP::Fill->new(), $vbox] ), TITLE=>"ColorBrowser" );
$dlg->ShowXY(IUP_CENTER, IUP_CENTER);

if (IUP->MainLoopLevel == 0) {
  IUP->MainLoop;
}
