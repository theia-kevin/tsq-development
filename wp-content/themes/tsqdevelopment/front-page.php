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
        <div class="w-full pt-36 px-4 lg:px-0">
            <div class="grid grid-cols-12">
                <div class="col-span-12 lg:col-span-4 flex items-end justify-end">
                    <div class="description-swiper-container swiper-container">
                        <div class="swiper-wrapper">
                            <?php
                            $args = [
                                'post_type'  => 'project',
                                'meta_key'   => 'is_featured',
                                'meta_value' => '1'
                            ];
                            $query = new WP_Query($args);

                            while ($query->have_posts()) {
                                $query->the_post();
                                ?>
                                <div class="swiper-slide">
                                    <p><?php the_title(); ?></p>
                                    <p><?php the_field('description_short'); ?></p>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="col-span-12 lg:col-span-8">
                    <div class="image-swiper-container swiper-container">
                        <div class="swiper-wrapper">
                            <?php
                            $args = [
                                'post_type'  => 'project',
                                'meta_key'   => 'is_featured',
                                'meta_value' => '1'
                            ];
                            $query = new WP_Query($args);

                            while ($query->have_posts()) {
                                $query->the_post();
                                ?>
                                <div class="swiper-slide h-auto">
                                    <img class="object-cover h-full w-full" src="<?php the_field('feature_image'); ?>" alt="">
                                </div>
                            <?php } ?>
                        </div>
                        <div class="flex justify-between">
                            <div class="flex py-4">
                                <div class="tsq-prev cursor-pointer pr-12">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="8.358" height="17.971" viewBox="0 0 8.358 17.971">
                                        <defs>
                                            <style>.a {
                                                    fill: none;
                                                    stroke: #212429;
                                                    stroke-linecap: round;
                                                    stroke-linejoin: round;
                                                }</style>
                                        </defs>
                                        <path class="a" d="M2508.934,2093.758l-7.152,8.28,7.152,8.28" transform="translate(-2501.282 -2093.052)"/>
                                    </svg>
                                </div>
                                <div class="tsq-next cursor-pointer">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="8.357" height="17.971" viewBox="0 0 8.357 17.971">
                                        <defs>
                                            <style>.a {
                                                    fill: none;
                                                    stroke: #212429;
                                                    stroke-linecap: round;
                                                    stroke-linejoin: round;
                                                }</style>
                                        </defs>
                                        <path class="a" d="M2558.779,2110.318l7.152-8.28-7.152-8.28" transform="translate(-2558.074 -2093.052)"/>
                                    </svg>
                                </div>
                            </div>
                            <div class="tsq-pagination py-2"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                'post_type'  => 'project',
                'meta_key'   => 'is_featured',
                'meta_value' => '1'
            ];

            $query = new WP_Query($args);

            while ($query->have_posts()) {
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
