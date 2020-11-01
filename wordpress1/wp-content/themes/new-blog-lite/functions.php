<?php
/**
 *Recommended way to include parent theme styles.
 *(Please see http://codex.wordpress.org/Child_Themes#How_to_Create_a_Child_Theme)
 */ 
  add_action( 'wp_enqueue_scripts', 'new_blog_lite_style' );
  function new_blog_lite_style() {

	$parent_style = 'new-blog-style';
	wp_enqueue_style( 'kenwheeler-slicktheme', get_template_directory_uri() . '/css/slick-theme.css' );
    wp_enqueue_style('bootstrap', get_template_directory_uri() . '/css/bootstrap.css');
    wp_enqueue_style($parent_style, get_template_directory_uri() . '/style.css' );
    wp_enqueue_style(
        'new-blog-lite-style',
        get_stylesheet_directory_uri() . '/style.css',
        array( 'bootstrap', $parent_style ),
        wp_get_theme()->get('Version') );
}
/**
 *Your code goes below
 */

function new_blog_lite_customize_other( $wp_customize ) {
// //Removed Section from the Parent theme 
$wp_customize->remove_control('new_blog_blog_post_layout');
$wp_customize->remove_control('new_blog_banner_slider_post_taxonomy_Excerpt');
$wp_customize->remove_control('new_blog_banner_slider_post_taxonomy_ReadMore');
$wp_customize->remove_control('new_blog_banner_slider_post_taxonomy_Category');

}
add_action( 'customize_register', 'new_blog_lite_customize_other', 9999 );

function new_blog_lite_remove_parent_function() {
	remove_action( 'after_setup_theme', 'new_blog_custom_header_setup' );
}
add_action( 'wp_loaded', 'new_blog_lite_remove_parent_function' );

function new_blog_lite_custom_header_setup() {
	
	add_theme_support( 'custom-header', apply_filters( 'new_blog_lite_custom_header_args', array(
		'default-image'			=> get_theme_file_uri( '/images/default-header-image.jpg'),
		'width'              => 1400,
		'height'             => 675,
		'flex-height'        => true,
		'wp-head-callback'   => 'new_blog_header_style',
	) ) );
	register_default_headers( array(
		'default-image' => array(
			'url'           => '%s/images/default-header-image.jpg',
			'thumbnail_url' => '%s/images/default-header-image.jpg',
			'description'   => __( 'Default Header Image', 'new-blog-lite' ),
		),
	) );
}
add_action( 'after_setup_theme', 'new_blog_lite_custom_header_setup' );