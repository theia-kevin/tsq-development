<?php
get_header();
?>
<?php
$args = [
    'post_type'  => 'project',
    'meta_key'   => 'is_featured',
    'meta_value' => '1',
    'orderby'    => 'id',
    'order'      => 'ASC'
];

$query = new WP_Query($args);
?>
    <div class="h-full w-full pt-28 bg-auto bg-no-repeat bg-left-bottom bg-fixed px-4 lg:px-0" style="background-image: url('<?php the_field('background_image',
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
                                <p class="text-lg text-grey-01 font-extralight uppercase pb-4 pt-20 lg:pt-0"><?php the_title(); ?></p>
                                <p class="text-sm text-grey-01 font-light pb-2"><?php the_field('description_short'); ?></p>
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
                            <p id="tsq-current-index" class="text-2xl text-grey-01 font-extralight pr-0 lg:pr-48"></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container mx-auto flex justify-start pt-4">
            <div class="inline-flex items-center justify-between">
                <a href="tel:<?php the_field('telephone', 'option'); ?>"><img class="self-center pl-0 pr-2 lg:px-2" src="<?php echo get_theme_file_uri('/images/phone.png'); ?>" alt=""></a>
                <a href="mailto:<?php the_field('email', 'option'); ?>"><img class="self-center px-2" src="<?php echo get_theme_file_uri('/images/mail.png'); ?>" alt=""></a>
                <a href="<?php the_field('facebook', 'option'); ?>" target="_blank"><img class="self-center px-2" src="<?php echo get_theme_file_uri('/images/facebook.png'); ?>" alt=""></a>
            </div>
        </div>
    </div>
<?php
get_footer();
