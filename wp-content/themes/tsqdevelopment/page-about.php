<?php
get_header();
?>
    <div class="container mx-auto pt-36 px-4 lg:px-0">
        About
        <?php
        print_r('<br><br>');

        the_field('about_title', get_the_ID());
        print_r('<br><br>');

        the_field('about_description', get_the_ID());
        print_r('<br><br>');

        echo wp_get_attachment_url(get_post_thumbnail_id(get_the_ID()));
        print_r('<br><br>');
        ?>

        Our Philosophy

        <?php
        print_r('<br><br>');

        foreach (get_field('philosophy', get_the_ID()) as $philosophy) {
            print_r($philosophy);
            print_r('<br><br>');
        }
        ?>

        Our Team

        <?php
        print_r('<br><br>');

        foreach (get_field('team', get_the_ID()) as $team) {
            print_r($team);
            print_r('<br><br>');
        }
        ?>

    </div>
<?php
get_footer();
