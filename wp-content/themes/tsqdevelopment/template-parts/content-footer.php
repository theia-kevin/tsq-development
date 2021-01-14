<div class="container mx-auto flex flex-col items-end py-12 lg:py-0">
    <div class="inline-flex items-center justify-between pb-2">
        <a href="tel:<?php the_field('telephone', 'option'); ?>"><img class="self-center pr-4" src="<?php echo get_theme_file_uri('/images/phone.png'); ?>" alt=""></a>
        <a href="mailto:<?php the_field('email', 'option'); ?>"><img class="self-center pr-4" src="<?php echo get_theme_file_uri('/images/mail.png'); ?>" alt=""></a>
        <a href="<?php the_field('facebook', 'option'); ?>" target="_blank"><img class="self-center" src="<?php echo get_theme_file_uri('/images/facebook.png'); ?>" alt=""></a>
    </div>
    <p class="text-grey-01"><?php the_field('copyright', 'option'); ?></p>
</div>
