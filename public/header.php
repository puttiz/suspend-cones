<div class="topbar bar dark"></div>
<!--
  Masthead
  ==========================================================================
-->
<div class="header container">
  <div class="span2 offset1">
    <h1 class="logo">Glimmer</h1>
    <p class="lead"></p>
  </div>
  <div class="mastnav span8">
    <ul class="nav">
      <?
        foreach( $shopManager->getShopPageLinks() as $mastnav ) {
          echo ($mastnav->highLight == 1) ? '<li><a href="' . $mastnav->href . '" class="active">' . $mastnav->text .'</a></li>' . "\n" : '<li><a href="' . $mastnav->href . '">' . $mastnav->text .'</a></li>' . "\n";
        }
      ?>
    </ul>
  </div>
</div>