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
define( 'DB_NAME', 'tsqdevelopment' );

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
define( 'AUTH_KEY',         '*:G7mAI4mE3%]S^qd:#I8/^*v}^[,W4N.eH+b~S|:,|`tBFBnLLET#6QolbL/V8R' );
define( 'SECURE_AUTH_KEY',  'ThNIxXvZ:?1lj:2~06KuLqQ~<*uee2P3e.4(ab*XnILdkmJ^/xbJGOy;BT1:k)dQ' );
define( 'LOGGED_IN_KEY',    'Bx8]#>>q_)EJo?tpTf`>bo;|lXS2@&Lr,c#_/q=g3H#^.r>!mb&6VcG|]<)[1lFf' );
define( 'NONCE_KEY',        '{G-z1@c:1$IQUTQ37o+#[u^t)5+)im*f1?AeR*E:g*m[MatWdjyAa_cCQ{GKT=lQ' );
define( 'AUTH_SALT',        'BNtN% n{I!< KS@NkfD$#`/&=8qkvF,_qw4P]@1Sk>[hSFX$mWi?8da!5B`q!i<#' );
define( 'SECURE_AUTH_SALT', 'l*!1y2svXf4tol8gTn$.WUYo``/<lY2WObgLgBWzhuFqZUiK0v5eR[K$:cNjUo/(' );
define( 'LOGGED_IN_SALT',   'F{B_5mqfZ4[3K:o2#>T 0gN)w.V5)?e!mY`tp?ihmxk2:^|wvw7.tEX`,8)Pc]i|' );
define( 'NONCE_SALT',       'N]R!nVqQCrl&.# b:;>l5MH-JJ1@0cChzWO5iz g1E[nsm6qoJF&TBPks7w7LJET' );

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
