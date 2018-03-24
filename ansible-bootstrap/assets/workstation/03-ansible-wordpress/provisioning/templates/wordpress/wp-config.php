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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'wordpress');

/** MySQL database password */
define('DB_PASSWORD', 'bananas');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'KPFV4NN?RvRZaKP[[PlC}DJynR)C]%2C0l4K0q L)O:U*nkvv<Tl~rx$nKEEadC,');
define('SECURE_AUTH_KEY',  '<vin|8_J^xA/n,C bDAJM{HKMv<]R&[7$AGSVd!.XK|$5<mb96,Rg@-oHzw.9` a');
define('LOGGED_IN_KEY',    '$dN${.Gh$dtn.`kyQQ QUI=xb7OArC.2qM8_F_8F[uozr>lWlRcGC~rsE++>2.Zi');
define('NONCE_KEY',        ' PF3B?/;&LBOC<]uLp.HvN9tFL@/xS93!<]cO<uW1:eq*dSKTDn1On_Y|Q:G=B2[');
define('AUTH_SALT',        '38>bHAH}YL4Hx{R/Aq C<heb50PG)|6lp}3~B{*$WK7zCE[g,cmvr0u?EoJXv2%~');
define('SECURE_AUTH_SALT', '%sbHO/ORsqNQrmikWbPQfEnOIi_eBl8&&v]+Mi-[9-F9}xlo,e7M;;mbQ[Eyh5Rj');
define('LOGGED_IN_SALT',   '9a*rD4tr1[LGWG|BlgyYsqlH8_BrhXa(<k,|d6 WV+L.h?]c19WD)&k&Bh(1*;=:');
define('NONCE_SALT',       'mTICrX,C[~C~D.cybF56|,Bk37#ZT`Yc1h(=EOL;rs2-m=pi?};;/K)+2g7!msCu');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');


