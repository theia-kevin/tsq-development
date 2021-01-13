<?php
get_header();
?>
<?php
if (get_field('loading_screen', 'option')) {
    ?>
    <div id="loading-screen" x-data="{ loadingScreen: true }">
        <div class="z-50 absolute h-screen w-screen bg-conver bg-no-repeat bg-center" x-show="loadingScreen" x-on:mouseenter.debounce.600="loadingScreen = false" x-transition:enter="transition-opacity ease-linear duration-300" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="transition-opacity ease-linear duration-300" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0" style="background-image: url('<?php the_field('loading_image',
            'option'); ?>');">
        </div>
    </div>
    <?php
}
?>
    <div class="h-full bg-auto bg-no-repeat bg-left-bottom bg-fixed" style="background-image: url('<?php the_field('background_image',
        'option'); ?>');">
        <div class="container mx-auto pt-36 px-4 lg:px-0">
            <?php
            the_field('telephone', 'option');
            print_r('<br><br>');

            the_field('email', 'option');
            print_r('<br><br>');

            the_field('facebook', 'option');
            print_r('<br><br>----<br>');
            ?>
            <?php

            $args = [
                'post_type'		=> 'project',
                'meta_key'		=> 'is_featured',
                'meta_value'	=> '1'
            ];

            $query = new WP_Query( $args );

            while ($query->have_posts())  {
                $query->the_post();

                the_title();
                print_r('<br><br>');

                the_field('description_short');
                print_r('<br><br>');

                the_field('feature_image');
                print_r('<br><br>');


            }

            ?>
        </div>
    </div>
<?php
get_footer();
