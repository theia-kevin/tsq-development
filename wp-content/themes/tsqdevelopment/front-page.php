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

$args = [
    'post_type'  => 'project',
    'meta_key'   => 'is_featured',
    'meta_value' => '1',
    'orderby'    => 'id',
    'order'      => 'ASC'
];

$query = new WP_Query($args);
?>
    <div class="h-auto lg:h-full w-full pt-28 bg-auto bg-no-repeat bg-left-bottom bg-fixed" style="background-image: url('<?php the_field('background_image',
        'option'); ?>');">
        <div class="grid grid-cols-12">
            <div class="col-span-12 lg:col-span-4 flex items-end">
                <div class="description-swiper-container swiper-container">
                    <div class="swiper-wrapper">
                        <?php
                        while ($query->have_posts()) {
                            $query->the_post();
                            ?>
                            <div class="swiper-slide text-center pb-8 lg:text-right lg:pr-24 lg:pb-12">
                                <p class="font-extralight text-2xl uppercase pb-4"><?php the_title(); ?></p>
                                <p class="font-normal text-xl"><?php the_field('description_short'); ?></p>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <div class="col-span-12 lg:col-span-8">
                <div class="image-swiper-container swiper-container">
                    <div class="swiper-wrapper">
                        <?php
                        while ($query->have_posts()) {
                            $query->the_post();
                            ?>
                            <div class="swiper-slide">
                                <a href="<?php echo get_post_permalink(); ?>">
                                    <img src="<?php the_field('feature_image'); ?>" alt="">
                                </a>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="flex justify-between">
                        <div class="flex py-4">
                            <div class="tsq-prev cursor-pointer pr-12">
                                <img src="<?php echo get_theme_file_uri('/images/left-arrow.png'); ?>" alt="">
                            </div>
                            <div class="tsq-next cursor-pointer">
                                <img src="<?php echo get_theme_file_uri('/images/right-arrow.png'); ?>" alt="">
                            </div>
                        </div>
                        <div class="flex items-center">
                            <div class="tsq-pagination py-2 pr-12"></div>
                            <p id="tsq-current-index" class="text-xl text-grey-01 font-normal pr-0 lg:pr-48"></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container mx-auto flex justify-start pt-4">
            <div class="inline-flex items-center justify-between">
                <a href="tel:<?php the_field('telephone', 'option'); ?>"><img class="self-center pl-0 pr-4 lg:px-4" src="<?php echo get_theme_file_uri('/images/phone.png'); ?>" alt=""></a>
                <a href="mailto:<?php the_field('email', 'option'); ?>"><img class="self-center px-4" src="<?php echo get_theme_file_uri('/images/mail.png'); ?>" alt=""></a>
                <a href="<?php the_field('facebook', 'option'); ?>" target="_blank"><img class="self-center px-4" src="<?php echo get_theme_file_uri('/images/facebook.png'); ?>" alt=""></a>
            </div>
        </div>
    </div>
<?php
get_footer();
