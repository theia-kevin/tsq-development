<?php
get_header();
?>
<div class="container mx-auto pt-36 px-4 lg:px-0">
   <?php
        echo do_shortcode('[contact-form-7 id="5" title="Contact form 1"]');

        print_r('<br><br>');

        foreach (get_field('office', get_the_ID()) as $office) {
            print_r($office);
            print_r('<br><br>');
        }

        echo wp_get_attachment_url(get_post_thumbnail_id(get_the_ID()));

   ?>
</div>
<?php
get_footer();
