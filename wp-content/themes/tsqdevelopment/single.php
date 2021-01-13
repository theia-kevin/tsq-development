<?php
get_header();
?>
    <div class="container mx-auto pt-36 px-4 lg:px-0">
        <div class="rounded-md bg-red-50 p-4">
            <div class="flex">
                <div class="flex-shrink-0">
                    <svg class="h-5 w-5 text-red-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z" clip-rule="evenodd" />
                    </svg>
                </div>
                <div class="ml-3 flex-1 md:flex md:justify-between">
                    <p class="text-sm text-red-700">
                        Page not found.
                    </p>
                    <p class="mt-3 text-sm md:mt-0 md:ml-6">
                        <a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="whitespace-nowrap font-medium text-red-700 hover:text-blue-600">Back to Home <span aria-hidden="true">&rarr;</span></a>
                    </p>
                </div>
            </div>
        </div>

    </div>
<?php
get_footer();
