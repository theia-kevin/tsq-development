<?php
/**
 * TSQ Development functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package TSQ_Development
 */

if (!defined('_S_VERSION')) {
    // Replace the version number of the theme on each release.
    define('_S_VERSION', '202103182119');
}

if (!function_exists('tsqdevelopment_setup')) :
    /**
     * Sets up theme defaults and registers support for various WordPress features.
     *
     * Note that this function is hooked into the after_setup_theme hook, which
     * runs before the init hook. The init hook is too late for some features, such
     * as indicating support for post thumbnails.
     */
    function tsqdevelopment_setup()
    {
        /*
         * Make theme available for translation.
         * Translations can be filed in the /languages/ directory.
         * If you're building a theme based on TSQ Development, use a find and replace
         * to change 'tsqdevelopment' to the name of your theme in all the template files.
         */
        load_theme_textdomain('tsqdevelopment', get_template_directory() . '/languages');

        // Add default posts and comments RSS feed links to head.
        add_theme_support('automatic-feed-links');

        /*
         * Let WordPress manage the document title.
         * By adding theme support, we declare that this theme does not use a
         * hard-coded <title> tag in the document head, and expect WordPress to
         * provide it for us.
         */
        add_theme_support('title-tag');

        /*
         * Enable support for Post Thumbnails on posts and pages.
         *
         * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
         */
        add_theme_support('post-thumbnails');

        // This theme uses wp_nav_menu() in one location.
        register_nav_menus(
            array(
                'menu-1' => esc_html__('Primary', 'tsqdevelopment'),
            )
        );

        /*
         * Switch default core markup for search form, comment form, and comments
         * to output valid HTML5.
         */
        add_theme_support(
            'html5',
            array(
                'search-form',
                'comment-form',
                'comment-list',
                'gallery',
                'caption',
                'style',
                'script',
            )
        );

        // Set up the WordPress core custom background feature.
        add_theme_support(
            'custom-background',
            apply_filters(
                'tsqdevelopment_custom_background_args',
                array(
                    'default-color' => 'ffffff',
                    'default-image' => '',
                )
            )
        );

        // Add theme support for selective refresh for widgets.
        add_theme_support('customize-selective-refresh-widgets');

        /**
         * Add support for core custom logo.
         *
         * @link https://codex.wordpress.org/Theme_Logo
         */
        add_theme_support(
            'custom-logo',
            array(
                'height'      => 250,
                'width'       => 250,
                'flex-width'  => true,
                'flex-height' => true,
            )
        );
    }
endif;
add_action('after_setup_theme', 'tsqdevelopment_setup');

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function tsqdevelopment_content_width()
{
    $GLOBALS['content_width'] = apply_filters('tsqdevelopment_content_width', 640);
}

add_action('after_setup_theme', 'tsqdevelopment_content_width', 0);

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function tsqdevelopment_widgets_init()
{
    register_sidebar(
        array(
            'name'          => esc_html__('Sidebar', 'tsqdevelopment'),
            'id'            => 'sidebar-1',
            'description'   => esc_html__('Add widgets here.', 'tsqdevelopment'),
            'before_widget' => '<section id="%1$s" class="widget %2$s">',
            'after_widget'  => '</section>',
            'before_title'  => '<h2 class="widget-title">',
            'after_title'   => '</h2>',
        )
    );
}

add_action('widgets_init', 'tsqdevelopment_widgets_init');

/**
 * Enqueue scripts and styles.
 */
function tsqdevelopment_scripts()
{
    wp_enqueue_style('tsqdevelopment-style', get_stylesheet_uri(), array(), _S_VERSION);
    wp_style_add_data('tsqdevelopment-style', 'rtl', 'replace');

    wp_enqueue_script('tsqdevelopment-navigation', get_template_directory_uri() . '/js/navigation.js', array(),
        _S_VERSION, true);

    if (is_singular() && comments_open() && get_option('thread_comments')) {
        wp_enqueue_script('comment-reply');
    }

    wp_enqueue_script('tsqdevelopment-app', get_template_directory_uri() . '/app.js', array(),
        _S_VERSION, true);

    if (is_page('Home')) {
        wp_enqueue_script('tsqdevelopment-front-page', get_template_directory_uri() . '/front-page.js', array(),
            _S_VERSION, true);
    }

    if (is_page('Projects')) {
        wp_enqueue_script('tsqdevelopment-page-project', get_template_directory_uri() . '/page-project.js', array(),
            _S_VERSION, true);
    }

    if (is_singular('project')) {
        wp_enqueue_script('tsqdevelopment-single-project', get_template_directory_uri() . '/single-project.js', array(),
            _S_VERSION, true);
    }

    wp_enqueue_script('tsqdevelopment-app', get_template_directory_uri() . '/js/app.js', array(),
        _S_VERSION, true);
}

add_action('wp_enqueue_scripts', 'tsqdevelopment_scripts');

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if (defined('JETPACK__VERSION')) {
    require get_template_directory() . '/inc/jetpack.php';
}

function hideAdminBar()
{
    show_admin_bar(false);
}

add_action('wp_loaded', 'hideAdminBar');

function addBodyClasses($classes)
{

    $classes[] = '';

    return $classes;
}

add_filter('body_class', 'addBodyClasses');

function addNavMenuActiveClass($classes)
{
    if (in_array('current-menu-item', $classes)) {
        $classes[] = 'active';
    }

    return $classes;
}

add_filter('nav_menu_css_class', 'addNavMenuActiveClass', 10, 2);

if (function_exists('acf_add_options_page')) {
    acf_add_options_page(
        [
            'menu_title' => 'Options',
            'page_title' => 'Home Options',
            'menu_slug'  => 'home-options',
            'redirect'   => false
        ]
    );

    acf_add_options_sub_page(
        [
            'menu_title'  => 'Footer',
            'page_title'  => 'Footer Options',
            'menu_slug'   => 'footer-options',
            'parent_slug' => 'home-options',
        ]
    );
}

function changeAdminLoginLogo()
{
    ?>
    <style type="text/css">
        body {
            background-image: url(<?php echo get_stylesheet_directory_uri(); ?>/images/wordpress-background.png) !important;
            background-repeat: no-repeat !important;
            background-size: contain !important;
            background-position: bottom left !important;
        }

        #login h1 a, .login h1 a {
            background-image: url(<?php echo get_stylesheet_directory_uri(); ?>/images/wordpress-logo.png);
        }
    </style>
    <?php
}

add_action('login_enqueue_scripts', 'changeAdminLoginLogo');

function setPostsOrder($query)
{
    if ($query->is_admin) {

        if ($query->get('post_type') == 'projects') {
            $query->set('orderby', 'modified');
            $query->set('order', 'DESC');
        }
    }
    return $query;
}

add_filter('pre_get_posts', 'setPostsOrder');
