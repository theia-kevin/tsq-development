<!doctype html>
<html class="relative h-full "<?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">
	<?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<header class="z-40 fixed w-full bg-white" x-data="{ sidebarOpen: false }" @keydown.window.escape="sidebarOpen = false">
    <div class="container mx-auto py-4 flex align items-center justify-between">
        <a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="flex align items-center">
            <img class="pl-4 xl:pl-0" src="<?php the_field('header_image_1', 'option'); ?>" alt="">
            <?php
                if($post->post_title == 'Home') {
                    ?>
                    <img class="pl-4" src="<?php the_field('header_image_2', 'option'); ?>" alt="">
                    <?php
                }
            ?>
        </a>
        <div class="cursor-pointer pr-4 xl:pr-0" @click.stop="sidebarOpen = true">
            <svg class="cursor-pointer" xmlns="http://www.w3.org/2000/svg" width="29" height="22" viewBox="0 0 29 22">
                <defs>
                    <style>.a {
                            fill: none;
                            stroke: #212429;
                            stroke-linecap: round;
                            stroke-linejoin: round;
                        }</style>
                </defs>
                <g transform="translate(-1798.5 -82)">
                    <line class="a" x2="27.909" transform="translate(1799 82.5)"/>
                    <line class="a" x2="27.909" transform="translate(1799 93)"/>
                    <line class="a" x2="27.909" transform="translate(1799.091 103.5)"/>
                </g>
            </svg>
        </div>
        <div class="fixed inset-0 flex" x-show="sidebarOpen">
            <div class="fixed inset-0" @click="sidebarOpen = false" x-show="sidebarOpen" x-transition:enter="transition-opacity ease-linear duration-300" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="transition-opacity ease-linear duration-300" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0">
                <div class="absolute inset-0 bg-gray-600 opacity-75"></div>
            </div>
            <div class="ml-auto relative flex-1 flex flex-col max-w-md w-full pt-24 pb-4 bg-grey-01" x-show="sidebarOpen" x-transition:enter="transition ease-in-out duration-300 transform" x-transition:enter-start="-translate-y-full" x-transition:enter-end="translate-y-0" x-transition:leave="transition ease-in-out duration-300 transform" x-transition:leave-start="translate-y-0" x-transition:leave-end="-translate-y-full">
                <div class="absolute top-10 right-0 mr-12 pt-2">
                    <button class="ml-1 flex items-center justify-center h-10 w-10 rounded-full focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white" x-show="sidebarOpen" @click="sidebarOpen = false">
                        <svg class="h-6 w-6 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
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
    </div>
</header>
