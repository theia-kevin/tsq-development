<?php
get_header();
?>
    <div class="container mx-auto h-auto lg:h-full pt-36 pb-0 lg:pb-32 px-4 lg:px-0">
        <div class="h-full grid grid-cols-12 mb-4">
            <div class="col-span-12 py-4 order-3 lg:order-1">
                <a href="<?php echo get_permalink(get_page_by_title('Projects')); ?>" class="block flex justify-end lg:justify-start">
                    <p class="text-2xl text-grey-01 font-extralight uppercase pr-4">View Projects</p>
                    <img class="self-center" src="<?php echo get_theme_file_uri('/images/right-arrow.png'); ?>" alt="">
                </a>
            </div>
            <div class="col-span-12 lg:col-span-3 flex flex-col justify-end order-1 lg:order-2">
                <div class="text-sm text-grey-01 font-light pb-12 order-2 lg:order-1 lg:w-9/12"><?php the_content(); ?></div>
                <p class="text-4xl text-grey-01 font-extralight uppercase order-1 lg:order-2 pb-12 lg:pb-0"><?php the_title(); ?></p>
            </div>
            <div class="col-span-12 lg:col-span-9 flex flex-wrap lg:flex-nowrap justify-center order-2 lg:order-3">
                <?php
                foreach (get_terms([
                    'taxonomy' => 'service',
                    'orderby'  => 'ID',
                    'order'    => 'ASC'
                ]) as $term) {
                    ?>
                    <div class="self-start p-4 transition duration-500 ease-in-out hover: transform hover:translate-x-1 hover:translate-y-1">
                        <a href="<?php echo get_permalink(get_page_by_title($term->to_array()['name'])); ?>">
                            <img src="<?php echo get_field('image', 'term_' . $term->to_array()['term_id']); ?>" alt="">
                        </a>
                        <a href="<?php echo get_permalink(get_page_by_title($term->to_array()['name'])); ?>" class="block text-xl text-grey-01 font-medium text-center lg:text-right pt-8">
                            <?php echo get_field('subtitle', 'term_' . $term->to_array()['term_id']); ?>
                        </a>
                    </div>
                    <?php
                }
                ?>
            </div>
        </div>
        <?php get_template_part( 'template-parts/content', 'footer' ); ?>
    </div>
<?php
get_footer();
