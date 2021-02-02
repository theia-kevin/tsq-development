<?php
get_header();

$field = get_field_object('status');
$value = $field['value'];
$label = $field['choices'][$value];
?>
    <div class="h-auto lg:h-full relative pt-28 px-4 lg:px-0">
        <div class="container mx-auto h-full">
            <div class="grid grid-cols-12 h-full">
                <div class="col-span-12 lg:col-start-1 lg:col-end-4 flex flex-col justify-start lg:justify-between h-full ">
                    <div class="pb-8">
                        <a class="block flex justify-start text-2xl text-grey-01 font-extralight hover:font-medium uppercase" href="<?php echo get_permalink(get_page_by_title('Projects')); ?>">
                            <img class="self-center" src="<?php echo get_theme_file_uri('/images/left-arrow.png'); ?>" alt="">
                            <div class="pl-4">Projects</div>
                        </a>
                        <a class="block flex justify-start text-2xl text-grey-01 font-extralight hover:font-medium uppercase " href="<?php echo get_permalink(get_next_post()); ?>">
                            <img class="self-center" src="<?php echo get_theme_file_uri('/images/right-arrow.png'); ?>" alt="">
                            <p class="pl-4">Next</p>
                        </a>
                    </div>
                    <div class="mb-8">
                        <p class="font-extralight tracking-wider text-base text-grey-01 pb-4"><?php the_field('description_long'); ?></p>
                        <p class="font-normal tracking-wide text-base text-grey-01">Year</p>
                        <p class="font-extralight tracking-wider text-base text-grey-01"><?php the_field('year'); ?></p>
                        <p class="font-normal tracking-wide text-base text-grey-01">Status</p>
                        <p class="font-extralight tracking-wider text-base text-grey-01"><?php echo $label; ?></p>
                        <p class="font-normal tracking-wide text-base text-grey-01">Client</p>
                        <p class="font-extralight tracking-wider text-base text-grey-01"><?php the_field('client'); ?></p>
                        <p class="font-normal tracking-wide text-base text-grey-01">Design Team</p>
                        <p class="font-extralight tracking-wider text-base text-grey-01 mb-8 lg:mb-48"><?php the_field('design_team'); ?></p>
                        <p class="font-extralight uppercase text-4xl text-grey-01 mb-4"><?php the_title(); ?></p>
                        <p class="font-medium text-xl text-grey-03"><?php the_field('location'); ?></p>
                    </div>

                </div>
            </div>
        </div>
        <div class="container relative lg:absolute top-0 right-0">
            <div class="grid grid-cols-12">
                <div class="col-span-12 lg:col-start-3 lg:col-end-13">
                    <div class="image-swiper-container swiper-container">
                        <div class="swiper-wrapper">
                            <?php
                            foreach (get_field('gallery') as $image) {
                                ?>
                                <div class="swiper-slide h-auto bg-cover bg-no-repeat" style="background-image:url('<?php echo $image; ?>')">
                                    <img class="invisible" src="<?php echo $image; ?>" alt="">
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
        </div>
    <div class="container mx-auto relative">
        <?php get_template_part( 'template-parts/content', 'footer-absolute' ); ?>
    </div>

    </div>
<?php
get_footer();
