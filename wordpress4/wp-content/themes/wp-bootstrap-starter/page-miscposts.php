<?php
/**
 * Template name: Page-miscposts
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
		$args = array(
			'post_type' => array('post', 'movie', 'portfolio'),
			'orderby' => array( 'date' => 'DESC', 'title' => 'ASC' ),
		);
		query_posts($args);

		 // The Query
 		$the_query = new WP_Query( $args );
	
 		// The Loop
 		if ( $the_query->have_posts() ) {
			 while ( $the_query->have_posts() ) {
				 $the_query->the_post();
				 $post_id = get_the_id();
				 echo '<h2>' . get_the_title() . ' [' . $post_id . ']</h2>';
				 echo '<p>' . the_content() . '</p>';
				 echo '<p>' . the_category(',') . '</p>';
		
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