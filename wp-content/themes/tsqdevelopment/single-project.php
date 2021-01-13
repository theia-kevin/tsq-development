<?php
get_header();
?>
    <div class="container mx-auto pt-36 px-4 lg:px-0">
        <?php
        the_title();
        print_r('<br><br>');

        the_field('location');
        print_r('<br><br>');

        the_field('description_long');
        print_r('<br><br>');

        the_field('year');
        print_r('<br><br>');

        $field = get_field_object( 'status' );
        $value = $field['value'];
        $label = $field['choices'][ $value ];
        print_r($label);
        print_r('<br><br>');

        the_field('client');
        print_r('<br><br>');

        the_field('design_team');
        print_r('<br><br>');

        $images = get_field('gallery');

        foreach ($images as $image)  {
            echo $image;
            print_r('<br><br>');
            print_r('<br><br>');
        }
        ?>
    </div>
<?php
get_footer();
