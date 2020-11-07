<?php

/* Oma Sidebar */
function sidebar_init() {

	register_sidebar( array(
		'name'          => 'Oma Sidebar',
		'id'            => 'oma-sidebar',
		'before_widget' => '<div>',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="rounded">',
		'after_title'   => '</h2>',
	) );

}
add_action( 'widgets_init', 'sidebar_init' );

?>