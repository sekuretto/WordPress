<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package WP_Bootstrap_Starter
 */

get_header(); ?>

	<section id="primary" class="content-area col-sm-12 col-lg-8">
		<main id="main" class="site-main" role="main">

		<?php


		while ( have_posts() ) : the_post();

			get_template_part( 'template-parts/content', get_post_format() );

				echo '<br><p>Tekijän nimi: ' . get_field('nimi') . '</p>';
				echo '<p>Työnäytteen kuvaus: ' . get_field('kuvaus') . '</p>';
				echo '<p>Tekijän rooli: ' . get_field('rooli') . '</p>';
				echo '<p>Asiakas: ' . get_field('asiakas') . '</p>';
				echo '<p>' . get_field('työnaytteen_kuva') . '</p>';
				echo '<p>' . get_field('pitka_selitys') . '</p>';

			    the_post_navigation();

			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;

		endwhile; // End of the loop.
		?>

		</main><!-- #main -->
	</section><!-- #primary -->

<?php
get_sidebar();
get_footer();
