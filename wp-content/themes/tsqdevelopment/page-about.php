<?php
get_header();
?>
    <div class="pt-32 bg-auto bg-no-repeat bg-left-bottom bg-fixed px-4 lg:px-0" style="background-image: url('<?php the_field('background_image',
        'option'); ?>');">
        <div class="relative">
            <div class="absolute top-0 right-0 hidden lg:block flex items-center">
                <img class="ml-auto lg:w-3/6 xl:w-4/6 2xl:w-full" src="<?php echo wp_get_attachment_url(get_post_thumbnail_id(get_the_ID())); ?>" alt="">
            </div>
            <div class="container mx-auto">
                <div class="grid grid-cols-12 pb-24 lg:pb-24">
                    <div class="col-span-12 lg:col-span-3 self-end">
                        <p class="text-4xl text-grey-01 font-extralight uppercase pb-12 lg:pb-28">About</p>
                    </div>
                    <div class="col-span-12 lg:col-span-9 pb-24 lg:pb-24 relative">
                        <div class="grid grid-cols-12">
                            <div class="col-span-12 lg:col-span-5 flex flex-col items-start justify-end pr-8 pb-8 lg:pb-0">
                                <p class="text-5xl text-grey-01 font-medium uppercase pb-12 lg:pb-16 leading-tight"><?php the_field('about_title', get_the_ID()); ?></p>
                                <p class="text-sm text-grey-01 font-light pb-2"><?php the_field('about_description', get_the_ID()); ?></p>
                            </div>
                            <div class="col-span-12 lg:col-span-7 self-end">
                                <img class="block lg:hidden" src="<?php echo wp_get_attachment_url(get_post_thumbnail_id(get_the_ID())); ?>" alt="">
                            </div>
                        </div>
                        <div class="absolute w-5/6 h-1px inset-x-0 left-1/2 transform -translate-x-1/2 bottom-0 bg-grey-01"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container mx-auto">
            <div class="grid grid-cols-12 pb-24 lg:pb-36">
                <div class="col-span-12 lg:col-span-3">
                    <p class="text-4xl text-grey-01 font-extralight uppercase pb-12 lg:pb-0">Our Philosophy</p>
                </div>
                <div class="col-span-12 lg:col-span-9">
                    <div class="grid grid-cols-12">
                        <?php
                        foreach (get_field('philosophy', get_the_ID()) as $philosophy) {
                            ?>
                            <div class="col-span-12 lg:col-span-4 pr-12 pb-8">
                                <p class="text-2xl text-grey-01 font-medium pb-4"><?php echo $philosophy['philosophy_title']; ?></p>
                                <p class="text-sm text-grey-01 font-light pb-2"><?php echo $philosophy['philosophy_description']; ?></p>
                            </div>
                            <?php
                        }
                        ?>
                    </div>
                </div>
            </div>
            <div class="grid grid-cols-12 pb-24 lg:pb-36">
                <div class="col-span-12 lg:col-span-3">
                    <p class="text-4xl text-grey-01 font-extralight uppercase pb-12 lg:pb-0">Our Team</p>
                </div>
                <div class="col-span-12 lg:col-span-9">
                    <div class="grid grid-cols-12">
                        <?php
                        foreach (get_field('team', get_the_ID()) as $team) {
                            ?>
                            <div class="col-span-12 lg:col-span-4 lg:pr-12 pb-12 lg:pb-16">
                                <img class="object-contain" src="<?php echo $team['team_image']; ?>" alt="">
                                <p class="text-base text-grey-01 font-semibold pt-2"><?php echo $team['team_name']; ?></p>
                                <p class="text-sm text-grey-01 font-light pb-2"><?php echo $team['team_position']; ?></p>
                            </div>
                            <?php
                        }
                        ?>
                        <div class="col-span-12 pb-12">
                            <img src="<?php the_field('group_photo', get_the_ID()); ?>" alt="">
                        </div>
                    </div>
                    <div class="flex justify-end">
                        <a class="inline-flex text-2xl text-grey-01 font-extralight hover:font-medium uppercase " href="<?php echo get_permalink(get_page_by_title('Contact')); ?>" >
                            <div class="pr-4">Say Hello</div>
                            <img class="self-center" src="<?php echo get_theme_file_uri('/images/right-arrow.png'); ?>" alt="">
                        </a>
                    </div>
                </div>
            </div>
            <?php get_template_part( 'template-parts/content', 'footer' ); ?>
        </div>
    </div>
<?php
get_footer();
