<?php /* Template Name: TheCustomContent */ ?>
<div class='customcontentarea'>
<h1>WP Miniteema</h1>
<p><strong>Terve!</strong> Olen minimaalinen WordPress-teema nimeltään miniteema. Tämä vaalean harmaalla pohjalla näkyvä ja katkoviivalla kehystetty alue on toteutettu thecustomcontent.php-template-tiedostona WordPressin Themes-kansion miniteema-alikansioon. Minut on kutsuttu näkymään tässä get_template_part('thecustomcontent')-funktiokutsulla miniteema-kansion index.php-ohjelmasta. Yläpuolellani on navigointivalikko, joka kuuluu header.php-tiedoston luomaan sivun otsikko-osaan. Navigointivalikko on saatu näkyväksi wp_nav_menu()-funktiolla. Navigointivalikon linkkien ei tarvitse aluksi johtaa mihinkään. Tässä alla on vielä esimerkki hakulomakkeen lisäämisestä tähän alueeseen get_search_form()-funktiolla.</p>
<?php get_search_form();?>

<?php
if (isset($_GET['posts'])) {
  if ( have_posts() ) {
    while ( have_posts() ) {
        the_post();
        the_title( '<h3>', '</h3>' );
        the_content();
    }
}
} 
?>
</div> <!-- customcontentarea -->
