<!doctype html>
<html class="relative h-full" <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<?php
if (get_field('loading_screen', 'option') && is_page('Home')) {
    ?>
    <div x-data="loadingScreen()">
        <div class="z-50 fixed h-screen w-screen bg-cover bg-no-repeat bg-center" x-show="showLoadingScreen" x-on:load.window.debounce.500="toggleLoadingScreen()" x-transition:enter="transition-opacity ease-linear duration-300" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="transition-opacity ease-linear duration-300" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0" style="background-image: url('<?php the_field('loading_image',
            'option'); ?>');">
        </div>
    </div>
    <script>
      function loadingScreen () {
        return {
          showLoadingScreen: true,
          toggleLoadingScreen () {
            this.showLoadingScreen = !this.showLoadingScreen;
          }
        };
      }
    </script>
    <?php
}
?>
<header class="fixed w-full bg-white pt-8 px-4 lg:px-0 z-40" x-data="{ sidebarOpen: false }" @keydown.window.escape="sidebarOpen = false">
    <div class="container mx-auto flex items-center justify-between">
        <div class="flex items-center">
            <?php echo get_custom_logo(); ?>
            <?php
            if ($post->post_title == 'Home') {
                ?>
                <img class="pl-4" src="<?php the_field('sub_logo_image', 'option'); ?>" alt="">
                <?php
            }
            ?>
        </div>
        <div class="cursor-pointer" @click.stop="sidebarOpen = true">
            <img src="<?php echo get_theme_file_uri('/images/breadcrumb.png'); ?>" alt="">
        </div>
        <div class="fixed inset-0 flex" x-show="sidebarOpen">
            <div class="fixed inset-0" @click="sidebarOpen = false" x-show="sidebarOpen" x-transition:enter="transition-opacity ease-linear duration-300" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="transition-opacity ease-linear duration-300" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0">
                <div class="absolute inset-0 bg-gray-600 opacity-75"></div>
            </div>
            <div class="ml-auto relative flex-1 flex flex-col max-w-lg w-full pt-24 pb-4 bg-grey-01" x-show="sidebarOpen" x-transition:enter="transition ease-in-out duration-300 transform" x-transition:enter-start="-translate-y-full" x-transition:enter-end="translate-y-0" x-transition:leave="transition ease-in-out duration-300 transform" x-transition:leave-start="translate-y-0" x-transition:leave-end="-translate-y-full">
                <div class="absolute top-10 right-0 mr-12 pt-2">
                    <button class="ml-1 flex items-center justify-center h-10 w-10 rounded-full focus:outline-none" x-show="sidebarOpen" @click="sidebarOpen = false">
                        <svg class="h-10 w-10 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M6 18L18 6M6 6l12 12"></path>
                        </svg>
                    </button>
                </div>
                <div class="mt-5 flex-1 h-0 overflow-y-auto">
                    <nav class="px-12 space-y-1">
                        <?php
                        wp_nav_menu(
                            array(
                                'theme_location' => 'menu-1',
                                'menu_id'        => 'primary-menu',
                            )
                        );
                        ?>
                    </nav>
                </div>
            </div>
        </div>
</header>
