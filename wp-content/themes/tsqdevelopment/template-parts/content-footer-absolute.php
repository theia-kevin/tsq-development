<div class="relative lg:absolute bottom-0 right-0 pb-8" data-aos="fade-left" data-aos-duration="2000" data-aos-once="true">
    <div class="flex items-center justify-end pb-2">
        <a href="tel:<?php the_field('telephone', 'option'); ?>">
            <img class="self-center" src="<?php echo get_theme_file_uri('/images/phone.png'); ?>" alt="">
        </a>
        <a href="mailto:<?php the_field('email', 'option'); ?>">
            <img class="self-center pl-4" src="<?php echo get_theme_file_uri('/images/mail.png'); ?>" alt="">
        </a>
        <a href="<?php the_field('facebook', 'option'); ?>" target="_blank">
            <img class="self-center pl-4" src="<?php echo get_theme_file_uri('/images/facebook.png'); ?>" alt="">
        </a>
    </div>
    <p class="font-extralight tracking-wider text-xs text-grey-01 text-right"><?php the_field('copyright', 'option'); ?></p>
</div>
