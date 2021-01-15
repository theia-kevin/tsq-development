<?php
get_header();
?>
<?php
$field = get_field_object('status');
$value = $field['value'];
$label = $field['choices'][$value];
?>
    <div class="h-full pt-36 px-4 lg:px-0">
        <div class="grid grid-cols-12">
            <div class="col-span-12 lg:col-span-4 flex items-end">
            </div>
            <div class="col-span-12 lg:col-span-8">
                <div class="image-swiper-container swiper-container">
                    <div class="swiper-wrapper">
                        <?php
                        foreach (get_field('gallery') as $image) {
                            ?>
                            <div class="swiper-slide">
                                <img src="<?php echo $image; ?>" alt="">
                            </div>
                        <?php } ?>
                    </div>
                    <div class="flex justify-between">
                        <div class="flex py-8">
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
        <div class="container mx-auto flex flex-col lg:flex-row flex-wrap items-start lg:justify-start lg:relative">
            <div class="inline-flex flex-col items-start pb-12 lg:pb-0">
                <p class="text-4xl text-grey-01 font-extralight uppercase"><?php the_title(); ?></p>
                <p class="text-xl text-grey-01 font-medium"><?php the_field('location'); ?></p>
            </div>
            <div class="lg:absolute lg:top-0 lg:left-0 lg:transform lg:-translate-y-full lg:pb-72">
                <p class="text-sm text-grey-01 font-light pb-4"><?php the_field('description_long'); ?></p>
                <p class="text-sm text-grey-01 font-medium">Year</p>
                <p class="text-sm text-grey-01 font-light"><?php the_field('year'); ?></p>
                <p class="text-sm text-grey-01 font-medium">Status</p>
                <p class="text-sm text-grey-01 font-light"><?php echo $label; ?></p>
                <p class="text-sm text-grey-01 font-medium">Client</p>
                <p class="text-sm text-grey-01 font-light"><?php the_field('client'); ?></p>
                <p class="text-sm text-grey-01 font-medium">Design Team</p>
                <p class="text-sm text-grey-01 font-light"><?php the_field('design_team'); ?></p>
                <div class="relative">
                    <div class="lg:absolute lg:top-0 lg:left-0 lg:transform lg:-translate-y-full lg:pb-96 pt-12 lg:pt-0">
                        <a class="block flex justify-start" href="<?php echo get_permalink(get_page_by_title('Projects')); ?>">
                            <img class="self-center" src="<?php echo get_theme_file_uri('/images/left-arrow.png'); ?>" alt="">
                            <p class="text-2xl text-grey-01 font-extralight uppercase pl-4">Projects</p>
                        </a>
                        <a class="block flex justify-start" href="<?php echo get_permalink(get_next_post()); ?>">
                            <img class="self-center" src="<?php echo get_theme_file_uri('/images/right-arrow.png'); ?>" alt="">
                            <p class="text-2xl text-grey-01 font-extralight uppercase pl-4">Next</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <?php get_template_part('template-parts/content', 'footer'); ?>
    </div>
<?php
get_footer();
