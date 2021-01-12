<?php
get_header();
?>
<div class="hidden" id="loading-screen" x-data="{ loadingScreen: true }">
    <div class="absolute h-screen w-screen bg-conver bg-no-repeat bg-center" x-show="loadingScreen" x-on:mouseenter.debounce.600 = "loadingScreen = false" x-transition:enter="transition-opacity ease-linear duration-300" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="transition-opacity ease-linear duration-300" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0" style="background-image: url('<?php echo get_theme_file_uri( '/images/Layer 1.png' ); ?>');">
    </div>
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
