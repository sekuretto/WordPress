<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpressdb' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ' Gv,zSc8yP?Dh,7&f&bf.2?|) gS4hHs{pX}%=g22rsS=>]drpI[;^Z`PKW^!28 ' );
define( 'SECURE_AUTH_KEY',  'os*1;|!a(><OAv|?R5w9bL!E5ZK%5%~7v@Gv%;P.tw6 0sH9HU8.@yEX-Y}i[Vi:' );
define( 'LOGGED_IN_KEY',    '%O=Q1PY:9&J(oyXr8&gB#$eTNv!4t@qEw4p;1RYo3Ph$ IXl)@X,`dg.t)oSKm5]' );
define( 'NONCE_KEY',        'LwD9E:1x47?r7:VoTy$a{DAu:AH)^#qWT@c3@i<>$vbd.@54x<CTS|!O$M6-q7}p' );
define( 'AUTH_SALT',        'rh|PYf?c|uv7=Lwca=9v-%w2Oe0,,czS475lPG,hVr9su6>*u35w(.J4+rz$;Z<R' );
define( 'SECURE_AUTH_SALT', 'uOHYa_qRKAa5}xh)RRG/Rr}j{WW<O<q,zZ^Iv]dnq&cI8XBn1~<i%{#BgEEcEcyy' );
define( 'LOGGED_IN_SALT',   'HhG+ozj)YW,;/ytm9fPL9>Ijx5;6`^(++ ^J74T#,)_a$yH}[,RI=naXdrnX|v$,' );
define( 'NONCE_SALT',       'FGcTEZVJ&ned!v(Ap),d$q-Vfbg&q,q7j9}ctrk1(a*w9;sPQ2.r?:TOuO7.}]>r' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
