<?php
/**
 * Template name: Blogi-artikkelit
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

		<?php
		$paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
		$args = array(
			'post_type' => array('post', 'page'),
			'orderby' => array( 'date' => 'DESC', 'title' => 'ASC' ),
			'posts_per_page' => 2,
			'paged' => $paged
		);
		query_posts($args);
 
		 // The Query
 		$the_query = new WP_Query( $args );
	
 		// The Loop
 		if ( $the_query->have_posts() ) {
			 while ( $the_query->have_posts() ) {
				 $the_query->the_post();
				 echo '<h2>' . get_the_title() . '</h2>';
				 echo '<p>' . get_the_content() . '</p>';
				 echo '<p>' . get_the_date("d.m.Y") . '</p>';
				 $link = get_the_permalink();
				 echo '<a href="' . $link . '">Linkki</a>';
		 	}
 		} else {
			 // no posts found
 		}
	 	/* Restore original Post Data */
 		wp_reset_postdata();
 
			?>
			<?php if (function_exists("pagination")) {
          pagination($custom_query->max_num_pages);
      } ?>

		</main><!-- #main -->
	</section><!-- #primary -->

<?php
get_sidebar();
get_footer();
