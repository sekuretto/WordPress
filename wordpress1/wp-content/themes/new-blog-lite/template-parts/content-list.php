<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
<div class="media">
        <?php if ( ! has_post_thumbnail() ) {
            if ( get_theme_mod('new_blog_blog_post_post_taxonomy_UseBlankImage','1') ==1) { ?>
            
            <div>
                <img  class="card-img-top img-holder" src = "<?php echo esc_url( get_template_directory_uri() ); ?>/images/baby-887833_1920-360x250.jpg " >
            </div>
            <?php } 
            
        } else if ( has_post_thumbnail() ) {
		new_blog_post_thumbnail();
		}  ?>
        <div class="media-body">
            <header class="entry-header">
				<div class="tag-date-comment">
					<?php if(absint(get_theme_mod('new_blog_blog_post_post_taxonomy_Category','1'))==1): ?>
						<span class ="cat"> <?php the_category( ' / ' ); ?> </span>
					<?php endif; ?>					
					<ul class="date-comment">
						<?php if(absint(get_theme_mod('new_blog_blog_post_post_taxonomy_Date','1'))==1): ?>
                            <li> <?php new_blog_posted_on() ?></li>
                        <?php endif; ?>
                        <?php if(absint(get_theme_mod('new_blog_blog_post_post_taxonomy_Comment','1'))==1): ?>
                            <li><?php new_blog_post_comment() ?></li>
                        <?php endif; ?>
                        <li><?php  new_blog_edit_post() ?></li>
					</ul>
						<?php if(absint(get_theme_mod('new_blog_blog_post_post_taxonomy_Tag','1'))==1): ?>
						<span class ="tag"> <?php new_blog_post_tag() ?></span>
						<?php endif; ?>
					</div>
					<?php the_title( '<h2 class="card-title blog-post-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' ); ?>
				
            </header>
                <?php the_excerpt(); ?>
				 <footer class="entry-footer">
                    <?php if(absint(get_theme_mod('new_blog_blog_post_post_taxonomy_ReadMore','1'))==1): ?>
                    <a class=" btn" href="<?php the_permalink(); ?>"><?php echo esc_html(get_theme_mod('new_blog_read_more_title',__('Read More', 'new-blog-lite'))); ?></a>
                <?php endif; ?>                
            </footer>
        </div>
    </div>
</article>