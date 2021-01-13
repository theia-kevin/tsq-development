<?php
get_header();
?>
    <div class="container mx-auto pt-36 px-4 lg:px-0">
        <?php

        $args = [
            'post_type' => 'project'
        ];

        $query = new WP_Query($args);

        while ($query->have_posts()) {
            $query->the_post();

            the_title();
            print_r('<br><br>');

            the_field('location');
            print_r('<br><br>');

            the_field('feature_image');
            print_r('<br><br>');


        }

        print_r(get_permalink( get_page_by_title( 'Residential' ) ));
        print_r('<br><br>');

        print_r(get_permalink( get_page_by_title( 'Subdivision' ) ));
        print_r('<br><br>');

        print_r(get_permalink( get_page_by_title( 'Landscaping' ) ));
        print_r('<br><br>');

        print_r(get_permalink( get_page_by_title( 'Projects' ) ));
        print_r('<br><br>');
        ?>
    </div>
<?php
get_footer();
