<?php
get_header();
?>
    <div class="container mx-auto h-auto lg:h-full pt-36 pb-0 lg:pb-32 px-4 lg:px-0">
        <div class="h-full grid grid-cols-12">
            <div class="col-span-12 lg:col-span-6 flex flex-col justify-end order-3 lg:order-1 pb-12">
                <div class="flex flex-wrap lg:flex-nowrap justify-between">
                    <div>
                        <?php
                        foreach (get_field('office', get_the_ID()) as $office) {
                            ?>
                            <p class="text-base text-grey-01 font-medium pb-2"><?php echo $office['address_line_1'] ?></p>
                            <p class="text-sm text-grey-01 font-light pb-2"><?php echo $office['address_line_2'] ?></p>
                            <p class="text-sm text-grey-01 font-light pb-2"><?php echo $office['address_line_3'] ?></p>
                            <p class="text-sm text-grey-01 font-light pb-2"><?php echo $office['address_line_4'] ?></p>
                            <p class="text-sm text-grey-01 font-light pb-2"><?php echo $office['email'] ?></p>
                            <p class="text-sm text-grey-01 font-light pb-12"><?php echo $office['telephone'] ?></p>
                            <?php
                        }
                        ?>
                    </div>
                    <div class="lg:mr-12">
                        <p class="text-base text-grey-01 font-medium pb-2">Quick Enquiry</p>
                        <?php echo do_shortcode('[contact-form-7 id="5" title="Contact form 1"]'); ?>
                    </div>
                </div>
            </div>
            <div class="col-span-12 lg:col-span-6 order-2 lg:order-2 pb-12 lg:pb-0">
                <img src="<?php echo wp_get_attachment_url(get_post_thumbnail_id(get_the_ID())); ?>" alt="">
            </div>
            <div class="col-span-12 order-1 lg:order-3 pb-12 lg:pb-0">
                <div class="text-4xl text-grey-01 font-extralight uppercase">Contact</div>
            </div>
        </div>
        <?php get_template_part( 'template-parts/content', 'footer' ); ?>
    </div>
<?php
get_footer();
