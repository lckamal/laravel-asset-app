var elixir = require('laravel-elixir');

/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your Laravel application. By default, we are compiling the Sass
 | file for our application, as well as publishing vendor resources.
 |
 */

elixir(function(mix) {
    mix.sass('app.scss')
    	.scripts([
            'libs/jquery.min.js',
            'libs/bootstrap.min.js',
            'adminlte/app.min.js',
            './resources/assets/plugins/input-mask/jquery.inputmask.js',
            './resources/assets/plugins/input-mask/jquery.inputmask.date.extensions.js',
            './resources/assets/plugins/input-mask/jquery.inputmask.extensions.js',
            './resources/assets/plugins/chartjs/Chart.min.js',
    		'libs/chosen.jquery.min.js',
    		'libs/sweetalert-dev.js',
            'libs/summernote.min.js',
    		'script.js',
    	], './public/js/libs.js')
    	.styles([
            //'libs/chosen.min.css',
    		'libs/chosen-bootstrap.css',
            'adminlte/AdminLTE.min.css',
            'adminlte/skins/_all-skins.min.css',
            'libs/sweetalert.css',
            'libs/font-awesome.min.css',
            'libs/summernote.css',
            'libs/summernote-bs3.css',
    		'style.css',
    	], './public/css/libs.css');

        mix.copy('resources/assets/fonts', 'public/fonts');
        mix.copy('resources/assets/images', 'public/images');
});