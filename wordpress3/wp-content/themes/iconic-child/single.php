<?php
/*
 * The Template for displaying all single posts.
 *
 * @package WordPress - Themonic Framework
 * @subpackage Iconic_One
 * @since Iconic One 1.0
 */

get_header(); ?>
<h1 style="font-size: 32px; color: #16A1E7;">Oma otsikko</h1>
<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem unde perspiciatis cupiditate. Doloremque tempore eos culpa ipsam quaerat vitae. Deleniti?<br><br></p>

<?php dynamic_sidebar( 'oma-sidebar' ); ?>

<div id="main" class="wrapper">
	<div id="primary" class="site-content">
		<div id="content" role="main">

			<?php while ( have_posts() ) : the_post(); ?>

				<?php get_template_part( 'content', get_post_format() ); ?>
				<nav class="nav-single">
					<div class="assistive-text"><?php _e( 'Post navigation', 'iconic-one' ); ?></div>
					<span class="nav-previous"><?php previous_post_link( '%link', '<span class="meta-nav">' . _x( '&larr;', 'Previous post link', 'iconic-one' ) . '</span> %title' ); ?></span>
					<span class="nav-next"><?php next_post_link( '%link', '%title <span class="meta-nav">' . _x( '&rarr;', 'Next post link', 'iconic-one' ) . '</span>' ); ?></span>
				</nav><!-- .nav-single -->

				<?php comments_template( '', true ); ?>

			<?php endwhile; // end of the loop. ?>

		</div><!-- #content -->
	</div><!-- #primary -->

<?php get_sidebar(); ?>
<?php get_footer(); ?>