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
define( 'AUTH_KEY',         'g0G:JdH0~jTqc  o@m{?dL4|XW7`G*,8zJPyAeMap)iy/W=r>vQ` 6ii(IBK)GEl' );
define( 'SECURE_AUTH_KEY',  'B8rGxbz%@0K&H^_G4;|U(~*_wBC%@=8:t}1$}DM#o(y{^A}<qu2>h|jkfn8?VqSD' );
define( 'LOGGED_IN_KEY',    '4.<eWAB&BG0*?ZJ%(_:2Zri]G3L/z~/A/f%-&5epy3y[[iZ3}&+](Eu>b*yU:q;Q' );
define( 'NONCE_KEY',        'M);tS5pymtKO3SYD=sl*xn*r@i|<`<_2.vjz!yeI|-CoCl8cR&sB.Ud|hCAh@rZq' );
define( 'AUTH_SALT',        'hi&gg;Yw9C!eECEo5  {/ )>73fo*F!)33e; 97.O,zg|~3)MbTkn3?1=2(Utd]p' );
define( 'SECURE_AUTH_SALT', '^,b4kg*]#(%k:mnEI.nmwvp*NQd>W,#wsyp$#?I5+g0,D}>tMi!Y]19LAwGD7dx6' );
define( 'LOGGED_IN_SALT',   'bSL;C|,-|Po%t9or0NzxRddb/[F]:/^9}%+cimN[z}4B4(1DaQ}aFW|C4MMhRe@O' );
define( 'NONCE_SALT',       'g<:Pgp[.t,Fk_xdt5i+NN?kN_$2*p3{rD~V14|*))kI/syt1nUlFsVDt]:NnvZnK' );

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
