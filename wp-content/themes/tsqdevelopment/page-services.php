<?php
get_header();
?>
    <div class="container mx-auto pt-36 px-4 lg:px-0">
        <?php
        the_title();
        print_r('<br><br>');

        the_content();
        print_r('<br><br>');

        foreach (get_terms([
            'taxonomy' => 'service',
            'orderby'  => 'ID',
            'order'    => 'ASC'
        ]) as $term) {
            print_r(get_field('subtitle', 'term_' . $term->to_array()['term_id']));
            print_r('<br><br>');
            print_r(get_field('image', 'term_' . $term->to_array()['term_id']));
            print_r('<br><br>');
        }
        ?>
    </div>
<?php
get_footer();
