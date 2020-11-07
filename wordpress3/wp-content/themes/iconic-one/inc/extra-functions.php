<?php
/**
 * Iconic One Extra Functions
 */
function iconic_one_excerpts() { ?>
		<div class="entry-summary">
				<!-- Ico nic One home page thumbnail with custom excerpt -->
			<div class="excerpt-thumb">
			<?php if (  (function_exists('has_post_thumbnail')) && (has_post_thumbnail())) : ?>
				<a href="<?php the_permalink(); ?>" title="<?php printf( esc_attr__( 'Permalink to %s', 'iconic-one' ), the_title_attribute( 'echo=0' ) ); ?>" rel="bookmark">
				<?php if ( ( wp_is_mobile() ) ) : ?>
					<?php the_post_thumbnail('excerpt-thumbnail-mobile', 'class=alignleft'); ?>
				<?php else : ?>
					<?php the_post_thumbnail('excerpt-thumbnail', 'class=alignleft'); ?>
				<?php endif;?>
				</a>
			<?php endif;?>
		</div>
			<?php the_excerpt(); ?>
		</div><!-- .entry-summary -->
		<?php }

function iop_social_icons() { ?>
		<div class="socialmedia">
			<?php if( get_theme_mod( 'twitter_url' ) !== '' ) { ?>
				<a href="<?php echo esc_url( get_theme_mod( 'twitter_url', 'default_value' ) ); ?>" target="_blank"><img src="<?php echo esc_url( get_template_directory_uri()); ?>/img/twitter.png" alt="Follow us on Twitter"/></a> 
			<?php } ?>
			<?php if( get_theme_mod( 'facebook_url' ) !== '' ) { ?>
					<a href="<?php echo esc_url( get_theme_mod( 'facebook_url', 'default_value' ) ); ?>" target="_blank"><img src="<?php echo esc_url( get_template_directory_uri()); ?>/img/facebook.png" alt="Follow us on Facebook"/></a>
			<?php } ?>
			<?php if( get_theme_mod( 'instagram_url' ) !== '' ) { ?>
					<a href="<?php echo esc_url(get_theme_mod( 'instagram_url', 'default_value' ) ); ?>" rel="author" target="_blank"><img src="<?php echo esc_url( get_template_directory_uri()); ?>/img/instagram.png" alt="Follow us on Instagram"/></a>
			<?php } ?>
			<?php if( get_theme_mod( 'linkedin_url' ) !== '' ) { ?>
					<a href="<?php echo esc_url(get_theme_mod( 'linkedin_url', 'default_value' ) ); ?>" rel="author" target="_blank"><img src="<?php echo esc_url( get_template_directory_uri()); ?>/img/linkedin.png" alt="Follow us on LinkedIn"/></a>
			<?php } ?>
			<?php if( get_theme_mod( 'rss_url' ) !== '' ) { ?>
			<a class="rss" href="<?php echo esc_url( get_theme_mod( 'rss_url', 'default_value' ) ); ?>" target="_blank"><img src="<?php echo esc_url( get_template_directory_uri()); ?>/img/rss.png" alt="Follow us on rss"/></a>			
			<?php } ?>
		</div>
		<?php }
?>