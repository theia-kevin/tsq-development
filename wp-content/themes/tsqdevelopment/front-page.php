<?php
get_header();
?>
<div class="absolute h-screen w-screen z-50 bg-conver bg-no-repeat bg-center" style="background-image: url('<?php echo get_theme_file_uri( '/images/Layer 1.png' ); ?>');">

</div>
<div class="h-full bg-auto bg-no-repeat bg-left-bottom bg-fixed" style="background-image: url('<?php echo get_theme_file_uri( '/images/Group 3.png' ); ?>');">
    <div class="container mx-auto pt-36 px-4 lg:px-0">
        Home Page
        <div class="splide">
            <div class="splide__track">
                <div class="splide__list">
                    <div class="splide__slide">Slide 01</div>
                    <div class="splide__slide">Slide 02</div>
                    <div class="splide__slide">Slide 03</div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
get_footer();
