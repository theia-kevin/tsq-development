<?php
get_header();
$query = new WP_Query([
    'post_type' => 'project'
]);
?>
    <div class="container mx-auto pt-32 px-4 lg:px-0">
        <div class="grid grid-cols-12">
            <div class="col-span-12 lg:col-span-3 flex flex-row lg:flex-col justify-between h-auto lg:h-screen">
                <div data-aos="fade-left" data-aos-duration="2000" data-aos-once="true">
                    <a class="block text-2xl text-grey-01 <?php echo is_page('Residential') ? 'font-medium' : 'font-extralight'; ?> hover:font-medium uppercase pb-2" href="<?php echo get_permalink(get_page_by_title('Residential')); ?>">Residential</a>
                    <a class="block text-2xl text-grey-01 <?php echo is_page('Subdivision') ? 'font-medium' : 'font-extralight'; ?> hover:font-medium uppercase pb-2" href="<?php echo get_permalink(get_page_by_title('Subdivision')); ?>">Subdivision</a>
                    <a class="block text-2xl text-grey-01 <?php echo is_page('Landscaping') ? 'font-medium' : 'font-extralight'; ?> hover:font-medium uppercase pb-2" href="<?php echo get_permalink(get_page_by_title('Landscaping')); ?>">Landscaping</a>
                    <a class="block text-2xl text-grey-01 <?php echo is_page('Projects') ? 'font-medium' : 'font-extralight'; ?> hover:font-medium uppercase pb-2" href="<?php echo get_permalink(get_page_by_title('Projects')); ?>">All</a>
                </div>
                <div class="py-12 lg:py-0 lg:pb-40 relative" data-aos="fade-right" data-aos-duration="2000" data-aos-once="true" data-aos-offset="0">
                    <?php if (is_page('Projects')) {
                        ?>
                        <a class="text-grey-01 font-extralight hover:font-medium uppercase" href="<?php echo get_permalink(get_page_by_title('Projects')) ?>">
                            <p class="text-4xl">Projects</p>
                        </a>
                        <?php
                    } else {
                        ?>
                        <a class="text-grey-01 font-extralight hover:font-medium uppercase" href="<?php echo get_permalink(get_page_by_title('Projects')) ?>">
                            <p class="text-4xl"><?php echo get_the_title(); ?></p>
                        </a>
                        <?php
                    }
                    ?>
                    <div class="hidden flex flex-col top-0 right-0">
                        <div id="tsq-up" class="cursor-pointer pb-12">
                            <img src="<?php echo get_theme_file_uri('/images/up-arrow.png'); ?>" alt="">
                        </div>
                        <div id="tsq-down" class="tsq-down cursor-pointer">
                            <img src="<?php echo get_theme_file_uri('/images/down-arrow.png'); ?>" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-span-12 lg:col-span-9">
                <?php
                $i = 0;
                while ($query->have_posts()) {
                    $query->the_post();
                    ?>
                    <div class="grid grid-cols-12" data-aos="<?php echo ($i % 3 == 0) ? 'fade-left' : 'fade-right'; ?>" data-aos-duration="2000" data-aos-offset="500" data-aos-once="true">
                        <div class="col-span-6 lg:col-span-4 pr-4 lg:pr-0">
                            <div class="inline-block text-right">
                                <a href="<?php the_permalink(); ?>">
                                    <p class="block text-xl text-grey-01 font-medium"><?php the_title(); ?></p>
                                    <p class="block text-lg text-grey-01 font-normal"><?php the_field('location'); ?></p>
                                </a>
                            </div>
                        </div>
                        <div class="col-span-6 lg:col-span-8 pb-12 lg:pb-20">
                            <a href="<?php the_permalink(); ?>">
                                <img src="<?php the_field('feature_image'); ?>" alt="">
                            </a>
                        </div>
                    </div>
                <?php
                    $i++;
                } ?>
            </div>
        </div>
        <?php get_template_part( 'template-parts/content', 'footer' ); ?>
    </div>
<?php
get_footer();
