<?php
/**
 * Template name: Portfolioteema
 * 
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WP_Bootstrap_Starter
 */

get_header(); ?>

	<section id="primary" class="content-area col-sm-12 col-lg-8">
		<main id="main" class="site-main" role="main">

		<header class="page-header">
				<?php
					echo '<h1>' . get_the_title() . '</h1>';
				?>
			</header>

		<?php
		$args = array(
			'post_type' => array('portfolio'),
			'orderby' => array( 'date' => 'DESC', 'title' => 'ASC' ),
		);
		query_posts($args);

		 // The Query
 		$the_query = new WP_Query( $args );
	
 		// The Loop
 		if ( $the_query->have_posts() ) {
			 while ( $the_query->have_posts() ) {
				 $the_query->the_post();
				 echo '<h2>' . get_the_title() . '</h2>';
				 echo '<p>Tekijän nimi: ' . get_field('nimi') . '</p>';
				 echo '<p>Työnäytteen kuvaus: ' . get_field('kuvaus') . '</p>';
				 echo '<p>Tekijän rooli: ' . get_field('rooli') . '</p>';
				 echo '<p>Asiakas: ' . get_field('asiakas') . '</p>';
				 echo '<p>' . get_field('työnaytteen_kuva') . '</p>';
				 echo '<p>' . get_field('pitka_selitys') . '</p>';
		
				 // echo '<p>' . get_the_date("d.m.Y") . '</p>';
				 $link = get_the_permalink();
				 echo '<a href="' . $link . '">Linkki</a>';
		 	}
 		} else {
			 // no posts found
 		}
	 	/* Restore original Post Data */
 		wp_reset_postdata();
 
			?>

		</main><!-- #main -->
	</section><!-- #primary -->

<?php
get_sidebar();
get_footer();
?>