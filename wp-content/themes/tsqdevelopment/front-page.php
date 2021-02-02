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
    <div class="h-full bg-auto bg-no-repeat bg-left-bottom bg-fixed pt-28 px-4 lg:px-0" style="background-image: url('<?php the_field('background_image',
        'option'); ?>');">
        <div class="grid grid-cols-12 gap-x-0 lg:gap-x-16">
            <div class="col-span-12 lg:col-span-4 flex items-end">
                <div class="description-swiper-container swiper-container">
                    <div class="swiper-wrapper">
                        <?php
                        while ($query->have_posts()) {
                            $query->the_post();
                            ?>
                            <div class="swiper-slide text-center lg:text-right px-8 my-8">
                                <p class="font-extralight tracking-wide uppercase text-xl text-grey-01"><?php the_title(); ?></p>
                                <p class="font-extralight tracking-wider text-base text-grey-01"><?php the_field('description_short'); ?></p>
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
                            <div class="swiper-slide h-auto bg-cover bg-no-repeat" style="background-image:url('<?php the_field('feature_image'); ?>')">
                                <a href="<?php echo get_post_permalink(); ?>">
                                    <img class="invisible" src="<?php the_field('feature_image'); ?>" alt="">
                                </a>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="flex items-center justify-between my-8 mr-8">
                        <div class="flex">
                            <div class="tsq-prev cursor-pointer pr-12">
                                <img src="<?php echo get_theme_file_uri('/images/left-arrow.png'); ?>" alt="">
                            </div>
                            <div class="tsq-next cursor-pointer">
                                <img src="<?php echo get_theme_file_uri('/images/right-arrow.png'); ?>" alt="">
                            </div>
                        </div>
                        <div class="flex items-center">
                            <div class="tsq-pagination"></div>
                            <p id="tsq-current-index" class="text-2xl text-grey-01 font-extralight"></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container mx-auto">
            <div class="inline-flex items-center">
                <a href="tel:<?php the_field('telephone', 'option'); ?>">
                    <img class="self-center pr-4" src="<?php echo get_theme_file_uri('/images/phone.png'); ?>" alt="">
                </a>
                <a href="mailto:<?php the_field('email', 'option'); ?>">
                    <img class="self-center pr-4" src="<?php echo get_theme_file_uri('/images/mail.png'); ?>" alt="">
                </a>
                <a href="<?php the_field('facebook', 'option'); ?>" target="_blank">
                    <img class="self-center" src="<?php echo get_theme_file_uri('/images/facebook.png'); ?>" alt="">
                </a>
            </div>
        </div>
    </div>
<?php
get_footer();
