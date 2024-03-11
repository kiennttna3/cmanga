<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="description" content="Anime Template">
        <meta name="keywords" content="Anime, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>Laravel</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- Styles -->
        <style>
            /* ! tailwindcss v3.2.4 | MIT License | https://tailwindcss.com */*,::after,::before{box-sizing:border-box;border-width:0;border-style:solid;border-color:#e5e7eb}::after,::before{--tw-content:''}html{line-height:1.5;-webkit-text-size-adjust:100%;-moz-tab-size:4;tab-size:4;font-family:Figtree, sans-serif;font-feature-settings:normal}body{margin:0;line-height:inherit}hr{height:0;color:inherit;border-top-width:1px}abbr:where([title]){-webkit-text-decoration:underline dotted;text-decoration:underline dotted}h1,h2,h3,h4,h5,h6{font-size:inherit;font-weight:inherit}a{color:inherit;text-decoration:inherit}b,strong{font-weight:bolder}code,kbd,pre,samp{font-family:ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;font-size:1em}small{font-size:80%}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}sub{bottom:-.25em}sup{top:-.5em}table{text-indent:0;border-color:inherit;border-collapse:collapse}button,input,optgroup,select,textarea{font-family:inherit;font-size:100%;font-weight:inherit;line-height:inherit;color:inherit;margin:0;padding:0}button,select{text-transform:none}[type=button],[type=reset],[type=submit],button{-webkit-appearance:button;background-color:transparent;background-image:none}:-moz-focusring{outline:auto}:-moz-ui-invalid{box-shadow:none}progress{vertical-align:baseline}::-webkit-inner-spin-button,::-webkit-outer-spin-button{height:auto}[type=search]{-webkit-appearance:textfield;outline-offset:-2px}::-webkit-search-decoration{-webkit-appearance:none}::-webkit-file-upload-button{-webkit-appearance:button;font:inherit}summary{display:list-item}blockquote,dd,dl,figure,h1,h2,h3,h4,h5,h6,hr,p,pre{margin:0}fieldset{margin:0;padding:0}legend{padding:0}menu,ol,ul{list-style:none;margin:0;padding:0}textarea{resize:vertical}input::placeholder,textarea::placeholder{opacity:1;color:#9ca3af}[role=button],button{cursor:pointer}:disabled{cursor:default}audio,canvas,embed,iframe,img,object,svg,video{display:block;vertical-align:middle}img,video{max-width:100%;height:auto}[hidden]{display:none}*, ::before, ::after{--tw-border-spacing-x:0;--tw-border-spacing-y:0;--tw-translate-x:0;--tw-translate-y:0;--tw-rotate:0;--tw-skew-x:0;--tw-skew-y:0;--tw-scale-x:1;--tw-scale-y:1;--tw-pan-x: ;--tw-pan-y: ;--tw-pinch-zoom: ;--tw-scroll-snap-strictness:proximity;--tw-ordinal: ;--tw-slashed-zero: ;--tw-numeric-figure: ;--tw-numeric-spacing: ;--tw-numeric-fraction: ;--tw-ring-inset: ;--tw-ring-offset-width:0px;--tw-ring-offset-color:#fff;--tw-ring-color:rgb(59 130 246 / 0.5);--tw-ring-offset-shadow:0 0 #0000;--tw-ring-shadow:0 0 #0000;--tw-shadow:0 0 #0000;--tw-shadow-colored:0 0 #0000;--tw-blur: ;--tw-brightness: ;--tw-contrast: ;--tw-grayscale: ;--tw-hue-rotate: ;--tw-invert: ;--tw-saturate: ;--tw-sepia: ;--tw-drop-shadow: ;--tw-backdrop-blur: ;--tw-backdrop-brightness: ;--tw-backdrop-contrast: ;--tw-backdrop-grayscale: ;--tw-backdrop-hue-rotate: ;--tw-backdrop-invert: ;--tw-backdrop-opacity: ;--tw-backdrop-saturate: ;--tw-backdrop-sepia: }::-webkit-backdrop{--tw-border-spacing-x:0;--tw-border-spacing-y:0;--tw-translate-x:0;--tw-translate-y:0;--tw-rotate:0;--tw-skew-x:0;--tw-skew-y:0;--tw-scale-x:1;--tw-scale-y:1;--tw-pan-x: ;--tw-pan-y: ;--tw-pinch-zoom: ;--tw-scroll-snap-strictness:proximity;--tw-ordinal: ;--tw-slashed-zero: ;--tw-numeric-figure: ;--tw-numeric-spacing: ;--tw-numeric-fraction: ;--tw-ring-inset: ;--tw-ring-offset-width:0px;--tw-ring-offset-color:#fff;--tw-ring-color:rgb(59 130 246 / 0.5);--tw-ring-offset-shadow:0 0 #0000;--tw-ring-shadow:0 0 #0000;--tw-shadow:0 0 #0000;--tw-shadow-colored:0 0 #0000;--tw-blur: ;--tw-brightness: ;--tw-contrast: ;--tw-grayscale: ;--tw-hue-rotate: ;--tw-invert: ;--tw-saturate: ;--tw-sepia: ;--tw-drop-shadow: ;--tw-backdrop-blur: ;--tw-backdrop-brightness: ;--tw-backdrop-contrast: ;--tw-backdrop-grayscale: ;--tw-backdrop-hue-rotate: ;--tw-backdrop-invert: ;--tw-backdrop-opacity: ;--tw-backdrop-saturate: ;--tw-backdrop-sepia: }::backdrop{--tw-border-spacing-x:0;--tw-border-spacing-y:0;--tw-translate-x:0;--tw-translate-y:0;--tw-rotate:0;--tw-skew-x:0;--tw-skew-y:0;--tw-scale-x:1;--tw-scale-y:1;--tw-pan-x: ;--tw-pan-y: ;--tw-pinch-zoom: ;--tw-scroll-snap-strictness:proximity;--tw-ordinal: ;--tw-slashed-zero: ;--tw-numeric-figure: ;--tw-numeric-spacing: ;--tw-numeric-fraction: ;--tw-ring-inset: ;--tw-ring-offset-width:0px;--tw-ring-offset-color:#fff;--tw-ring-color:rgb(59 130 246 / 0.5);--tw-ring-offset-shadow:0 0 #0000;--tw-ring-shadow:0 0 #0000;--tw-shadow:0 0 #0000;--tw-shadow-colored:0 0 #0000;--tw-blur: ;--tw-brightness: ;--tw-contrast: ;--tw-grayscale: ;--tw-hue-rotate: ;--tw-invert: ;--tw-saturate: ;--tw-sepia: ;--tw-drop-shadow: ;--tw-backdrop-blur: ;--tw-backdrop-brightness: ;--tw-backdrop-contrast: ;--tw-backdrop-grayscale: ;--tw-backdrop-hue-rotate: ;--tw-backdrop-invert: ;--tw-backdrop-opacity: ;--tw-backdrop-saturate: ;--tw-backdrop-sepia: }.relative{position:relative}.mx-auto{margin-left:auto;margin-right:auto}.mx-6{margin-left:1.5rem;margin-right:1.5rem}.ml-4{margin-left:1rem}.mt-16{margin-top:4rem}.mt-6{margin-top:1.5rem}.mt-4{margin-top:1rem}.-mt-px{margin-top:-1px}.mr-1{margin-right:0.25rem}.flex{display:flex}.inline-flex{display:inline-flex}.grid{display:grid}.h-16{height:4rem}.h-7{height:1.75rem}.h-6{height:1.5rem}.h-5{height:1.25rem}.min-h-screen{min-height:100vh}.w-auto{width:auto}.w-16{width:4rem}.w-7{width:1.75rem}.w-6{width:1.5rem}.w-5{width:1.25rem}.max-w-7xl{max-width:80rem}.shrink-0{flex-shrink:0}.scale-100{--tw-scale-x:1;--tw-scale-y:1;transform:translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))}.grid-cols-1{grid-template-columns:repeat(1, minmax(0, 1fr))}.items-center{align-items:center}.justify-center{justify-content:center}.gap-6{gap:1.5rem}.gap-4{gap:1rem}.self-center{align-self:center}.rounded-lg{border-radius:0.5rem}.rounded-full{border-radius:9999px}.bg-gray-100{--tw-bg-opacity:1;background-color:rgb(243 244 246 / var(--tw-bg-opacity))}.bg-white{--tw-bg-opacity:1;background-color:rgb(255 255 255 / var(--tw-bg-opacity))}.bg-red-50{--tw-bg-opacity:1;background-color:rgb(254 242 242 / var(--tw-bg-opacity))}.bg-dots-darker{background-image:url("data:image/svg+xml,%3Csvg width='30' height='30' viewBox='0 0 30 30' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M1.22676 0C1.91374 0 2.45351 0.539773 2.45351 1.22676C2.45351 1.91374 1.91374 2.45351 1.22676 2.45351C0.539773 2.45351 0 1.91374 0 1.22676C0 0.539773 0.539773 0 1.22676 0Z' fill='rgba(0,0,0,0.07)'/%3E%3C/svg%3E")}.from-gray-700\/50{--tw-gradient-from:rgb(55 65 81 / 0.5);--tw-gradient-to:rgb(55 65 81 / 0);--tw-gradient-stops:var(--tw-gradient-from), var(--tw-gradient-to)}.via-transparent{--tw-gradient-to:rgb(0 0 0 / 0);--tw-gradient-stops:var(--tw-gradient-from), transparent, var(--tw-gradient-to)}.bg-center{background-position:center}.stroke-red-500{stroke:#ef4444}.stroke-gray-400{stroke:#9ca3af}.p-6{padding:1.5rem}.px-6{padding-left:1.5rem;padding-right:1.5rem}.text-center{text-align:center}.text-right{text-align:right}.text-xl{font-size:1.25rem;line-height:1.75rem}.text-sm{font-size:0.875rem;line-height:1.25rem}.font-semibold{font-weight:600}.leading-relaxed{line-height:1.625}.text-gray-600{--tw-text-opacity:1;color:rgb(75 85 99 / var(--tw-text-opacity))}.text-gray-900{--tw-text-opacity:1;color:rgb(17 24 39 / var(--tw-text-opacity))}.text-gray-500{--tw-text-opacity:1;color:rgb(107 114 128 / var(--tw-text-opacity))}.underline{-webkit-text-decoration-line:underline;text-decoration-line:underline}.antialiased{-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.shadow-2xl{--tw-shadow:0 25px 50px -12px rgb(0 0 0 / 0.25);--tw-shadow-colored:0 25px 50px -12px var(--tw-shadow-color);box-shadow:var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow)}.shadow-gray-500\/20{--tw-shadow-color:rgb(107 114 128 / 0.2);--tw-shadow:var(--tw-shadow-colored)}.transition-all{transition-property:all;transition-timing-function:cubic-bezier(0.4, 0, 0.2, 1);transition-duration:150ms}.selection\:bg-red-500 *::selection{--tw-bg-opacity:1;background-color:rgb(239 68 68 / var(--tw-bg-opacity))}.selection\:text-white *::selection{--tw-text-opacity:1;color:rgb(255 255 255 / var(--tw-text-opacity))}.selection\:bg-red-500::selection{--tw-bg-opacity:1;background-color:rgb(239 68 68 / var(--tw-bg-opacity))}.selection\:text-white::selection{--tw-text-opacity:1;color:rgb(255 255 255 / var(--tw-text-opacity))}.hover\:text-gray-900:hover{--tw-text-opacity:1;color:rgb(17 24 39 / var(--tw-text-opacity))}.hover\:text-gray-700:hover{--tw-text-opacity:1;color:rgb(55 65 81 / var(--tw-text-opacity))}.focus\:rounded-sm:focus{border-radius:0.125rem}.focus\:outline:focus{outline-style:solid}.focus\:outline-2:focus{outline-width:2px}.focus\:outline-red-500:focus{outline-color:#ef4444}.group:hover .group-hover\:stroke-gray-600{stroke:#4b5563}.z-10{z-index: 10}@media (prefers-reduced-motion: no-preference){.motion-safe\:hover\:scale-\[1\.01\]:hover{--tw-scale-x:1.01;--tw-scale-y:1.01;transform:translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))}}@media (prefers-color-scheme: dark){.dark\:bg-gray-900{--tw-bg-opacity:1;background-color:rgb(17 24 39 / var(--tw-bg-opacity))}.dark\:bg-gray-800\/50{background-color:rgb(31 41 55 / 0.5)}.dark\:bg-red-800\/20{background-color:rgb(153 27 27 / 0.2)}.dark\:bg-dots-lighter{background-image:url("data:image/svg+xml,%3Csvg width='30' height='30' viewBox='0 0 30 30' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M1.22676 0C1.91374 0 2.45351 0.539773 2.45351 1.22676C2.45351 1.91374 1.91374 2.45351 1.22676 2.45351C0.539773 2.45351 0 1.91374 0 1.22676C0 0.539773 0.539773 0 1.22676 0Z' fill='rgba(255,255,255,0.07)'/%3E%3C/svg%3E")}.dark\:bg-gradient-to-bl{background-image:linear-gradient(to bottom left, var(--tw-gradient-stops))}.dark\:stroke-gray-600{stroke:#4b5563}.dark\:text-gray-400{--tw-text-opacity:1;color:rgb(156 163 175 / var(--tw-text-opacity))}.dark\:text-white{--tw-text-opacity:1;color:rgb(255 255 255 / var(--tw-text-opacity))}.dark\:shadow-none{--tw-shadow:0 0 #0000;--tw-shadow-colored:0 0 #0000;box-shadow:var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow)}.dark\:ring-1{--tw-ring-offset-shadow:var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);--tw-ring-shadow:var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color);box-shadow:var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow, 0 0 #0000)}.dark\:ring-inset{--tw-ring-inset:inset}.dark\:ring-white\/5{--tw-ring-color:rgb(255 255 255 / 0.05)}.dark\:hover\:text-white:hover{--tw-text-opacity:1;color:rgb(255 255 255 / var(--tw-text-opacity))}.group:hover .dark\:group-hover\:stroke-gray-400{stroke:#9ca3af}}@media (min-width: 640px){.sm\:fixed{position:fixed}.sm\:top-0{top:0px}.sm\:right-0{right:0px}.sm\:ml-0{margin-left:0px}.sm\:flex{display:flex}.sm\:items-center{align-items:center}.sm\:justify-center{justify-content:center}.sm\:justify-between{justify-content:space-between}.sm\:text-left{text-align:left}.sm\:text-right{text-align:right}}@media (min-width: 768px){.md\:grid-cols-2{grid-template-columns:repeat(2, minmax(0, 1fr))}}@media (min-width: 1024px){.lg\:gap-8{gap:2rem}.lg\:p-8{padding:2rem}}
        </style>

        <!-- Css Styles -->
        <link rel="stylesheet" href="{{ asset('css/frontend/bootstrap.min.css') }}" type="text/css">
        <link rel="stylesheet" href="{{ asset('css/frontend/font-awesome.min.css') }}" type="text/css">
        <link rel="stylesheet" href="{{ asset('css/frontend/elegant-icons.css') }}" type="text/css">
        <link rel="stylesheet" href="{{ asset('css/frontend/plyr.css') }}" type="text/css">
        <link rel="stylesheet" href="{{ asset('css/frontend/nice-select.css') }}" type="text/css">
        <link rel="stylesheet" href="{{ asset('css/frontend/owl.carousel.min.css') }}" type="text/css">
        <link rel="stylesheet" href="{{ asset('css/frontend/slicknav.min.css') }}" type="text/css">
        <link rel="stylesheet" href="{{ asset('css/frontend/style.css') }}" type="text/css">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/notyf@3/notyf.min.css">

        <!-- Css custom -->
        <style type="text/css">
            /* width */
            ::-webkit-scrollbar {
                width: 8px;
            }
            ::-webkit-scrollbar-button {
                width: 8px;
                height: 5px;
            }

            /* Track */
            ::-webkit-scrollbar-track {
                background: #33333300;
                border: thin solid #33333300;
                border-radius: 10px;
            }

            /* Handle */
            ::-webkit-scrollbar-thumb {
                background: #2d334f;
                border: thin solid #33333300;
                border-radius: 10px;
            }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
                background: #2d334f;
            }
            .text_capitalize {
                text-transform: capitalize;
            }
            .header__menu {
                text-align: left;
            }
            .header__menu ul li .search {
                background-color: #2d334f;
                width: 100%;
                border-radius: 50px;
                padding: 0 45px 0 20px;
                color: #fff;
                font-family: inherit;
                font-weight: inherit;
                font-size: inherit;
                height: 44px;
                margin: 13px 0;
                border: 2px solid #fff0;
            }
            .header__menu ul li.search_box {
                width: 400px;
                position: relative;
            }
            .header__menu ul li.search_icon {
                position: absolute;
                top: 50%;
                transform: translate(-10px,-50%);
            }
            .header__menu ul li .search_switch {
                border: none;
                position: absolute;
                right: 0;
                transform: translate(-20px,-44%);
                padding: 0;
            }
            .header__menu ul li.search_icon .icon_search {
                color: #fff;
                font-size: 19px;
            }
            .header__menu ul li .dropdown {
                width: 1000px;
                left: -382px;
            }
            .header__menu ul li .dropdown li {
                float: left;
                width: 200px;
            }
            .header__menu ul li .dropdown li a {
                width: fit-content;
                color: #ffffff;
                padding: 5px 10px;
                max-width: 100%;
                max-height: 30px;
                overflow: hidden;
            }
            .header__menu ul li:hover .dropdown {
                background-color: #151D35;
            }
            .header__menu ul li .dropdown li a:hover {
                color: #6C74FC;
            }
            .dropdown-item:focus, .dropdown-item:hover {
                background-color: transparent;
            }
            .header {
                position: fixed;
                width: -webkit-fill-available;
                /* background-color: #101739; */
            }
            .header_auth {
                text-align: right;
            }
            .header__right {
                padding: 0;
            }
            .header__menu ul li.active a {
                background-color: #6C74FC;
            }
            .header__right a.auth {
                margin-right: 0px;
            }
            .header__right .header__menu ul li .dropdown {
                width: auto;
                left: -190px;
                border-radius: 20px;
                padding: 10px 9px;
                background-color: #222F5C;
                box-shadow: 0 0 3px #0C1121;
            }
            .header__right .header__menu ul li .dropdown li {
                margin: 10px;
                cursor: pointer;
                line-height: 20px;
                border-radius: 150px;
            }
            .header__right .header__menu ul li .dropdown li:hover {
                background-color: #4A5693;
            }
            .header__right .header__menu ul li .dropdown li a:hover {
                color: #fff;
            }
            .header__right .header__menu ul li .dropdown li a i{
                margin-right: 4px;
            }
            .header__right .header__menu ul li a {
                padding: 0px;
            }
            .header__right .header__menu ul li a.auth {
                padding: 20px;
            }
            .actives {
                background-color: #6C74FC;
            }
            .avatar_layout {
                position: absolute;
                top: 10px;
                left: 12px;
                border-radius:50%;
                width:40px;
                height:40px;
            }
            .breadcrumb__links a i {
                color: #fff;
            }
            /* css form báo lỗi */
            #overlay {
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.5);
                z-index: 1; /* Ensure the overlay is on top */
            }

            #formContainer {
                position: absolute;
                top: 45%;
                left: 50%;
                transform: translate(-50%, -50%);
                background: #0C1121;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
                max-width: 80%; /* Adjust the maximum width as needed */
                width: 500px; /* Set a fixed width for smaller screens */
                z-index: 2; /* Ensure the form is on top of the overlay */
            }

            #closeForm {
                position: absolute;
                top: 10px;
                right: 10px;
                font-size: 20px;
                color: #6C74FC;
                cursor: pointer;
            }
            #overlay .btn {
                background-color: #6C74FC;
                border-color: #2A3254;
                color: #fff;
            }
            /* css form báo lỗi */
            .page-up a {
                background-color: #6C74FC;
            }
            .footer .footer__logo {
                margin: 0 0 15px 0;
            }
            .footer p {
                color: #fff;
            }
            .footer .hero__text {
                position: relative;
                z-index: 9;
            }
            .footer .hero__text .label {
                font-size: 13px;
                color: #fff;
                background: #293158;
                line-height: 30px;
                padding: 0 10px;
                display: inline-block;
                position: relative;
                top: 0;
                opacity: 1;
                list-style-type: none;
                margin-right: 8px;
                margin-bottom: 8px;
                border-radius: 3px;
            }
            .clear {
                clear: both;
            }
            @media only screen and (max-width: 767px) {
                .header {
                    position: fixed;
                    width: -webkit-fill-available;
                }
                .header__menu {
                    display: block
                }
                .header__right .header__menu {
                    display: block;
                }
                .header__right {
                    position: static;
                }
                .header__right .header__menu ul li a {
                    padding: 0px;
                }
                .header__right .header__menu ul li a.auth {
                    padding: 20px;
                }
                .header__menu ul li .search {
                    width: auto;
                }
                .header__menu ul li.search_icon {
                    position: absolute;
                    top: 50%;
                    transform: translate(130px);
                }
                .header__menu ul li .search_switch {
                    border: none;
                    position: absolute;
                    right: 0;
                    transform: translate(120px,-44%);
                    padding: 0;
                }
                .header__menu ul li.search_icon .icon_search {
                    font-size: 15px;
                }
                .dropdown-menu {
                    width: 96%;
                    left: -100px;
                }
            }
            @media only screen and (min-width: 768px) and (max-width: 991px) {
                .header__menu {
                    display: block
                }
                .header__menu ul li.search_icon {
                    position: absolute;
                    top: 50%;
                    transform: translate(200px);
                }
                .header__menu ul li .search_switch {
                    border: none;
                    position: absolute;
                    right: 0;
                    transform: translate(190px,-44%);
                    padding: 0;
                }
                .header__right .header__menu {
                    display: block;
                }
                .header__right {
                    position: static;
                }
                .header__right .header__menu ul li a {
                    padding: 0px;
                }
                .header__right .header__menu ul li a.auth {
                    padding: 20px;
                }
            }
            @media only screen and (min-width: 992px) and (max-width: 1199px) {
                .header__right .header__menu ul li a {
                    padding: 0px;
                }
                .header__right .header__menu ul li a.auth {
                    padding: 20px;
                }
            }
        </style>

        @stack('css')
    </head>
    <body class="antialiased">
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>
        <!-- Header Section Begin -->
        <header class="header text_capitalize">
            <div class="container">
                <div class="row">
                    <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-2 col-3">
                        <div class="header__logo">
                            <a href="{{ route('home') }}">
                                <img style="width: 100px;" src="{{ asset('img/logocmanga.png') }}" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-8 col-md-7 col-sm-8 col-xs-8 col-7">
                        <div class="header__nav">
                            <nav class="header__menu">
                                <ul>
                                    <form autocomplete="off" method="GET" action="{{ route('search') }}">
                                        @csrf
                                        <li class="search_box">
                                            <input type="search" name="keyword" id="keywords" class="search" placeholder="Bạn muốn tìm truyện gì" aria-label="Search">
                                            <div id="search_ajax"></div>
                                        </li>
                                        <li class="search_icon">
                                            <button class="btn search_switch" type="submit">
                                                <span class="icon_search"></span>
                                            </button>
                                        </li>
                                    </form>
                                    {{-- <li class="active"><a href="{{ route('home') }}">Trang chủ</a></li>
                                    <li>
                                        <a style="cursor: pointer">Thể loại <span class="arrow_carrot-down"></span></a>
                                        <ul class="dropdown">
                                            @foreach ($category as $key => $value)
                                                <li>
                                                    <a href="{{ route('category', [$value->slug]) }}">{{ $value->title }}</a>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li><a href="#">Our Blog</a></li>
                                    <li><a href="#">Contacts</a></li> --}}
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-2 col-md-3 col-sm-2 col-xs-2 col-2">
                        <div class="header__right">
                            <nav class="header__menu header_auth">
                                <ul>
                                    @if (Session::get('login_publisher'))
                                        <li>
                                            <a class="auth" style="cursor: pointer">
                                                <span class="icon_profile"></span>
                                                <img src="{{ Voyager::image(Session::get('avatar')) }}" id="media" class="avatar_layout" alt="">
                                            </a>
                                            <ul class="dropdown" style="display: none">
                                                <li>
                                                    <a href="{{ route('profile') }}">
                                                        <i class="fa-solid fa-user-tie"></i>
                                                        Trang cá nhân
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="{{ route('favorite') }}">
                                                        <i class="fa-solid fa-heart"></i>
                                                        Danh sách theo dõi
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="{{ route('readHistory') }}">
                                                        <i class="fa-solid fa-clock-rotate-left"></i>
                                                        Lịch sử đọc truyện
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                                        <i class="fa-solid fa-right-from-bracket"></i>
                                                        Đăng xuất
                                                    </a>
                                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                                        @csrf
                                                    </form>
                                                </li>
                                            </ul>
                                        </li>
                                    @else
                                        <li>
                                            <a href="{{ route('login') }}" class="auth" style="cursor: pointer"><span class="icon_profile"></span></a>
                                        </li>
                                    @endif
                                </ul>
                            </nav>
                        </div>
                    </div>
                    </div>
                </div>
                <div id="mobile-menu-wrap"></div>
            </div>
        </header>
        <!-- Header End -->

        <!-- Hero Section Begin -->
        <section class="hero">
            @yield('slide')
        </section>
        <!-- Hero Section End -->

        <!-- Product Section Begin -->
        <section class="product-page spad">
            @yield('content')
        </section>
        <!-- Product Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer">
            <div class="page-up">
                <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="footer__logo">
                            <a href="{{ route('home') }}"><img style="width: 100px;" src="{{ asset('img/logocmanga.png') }}" alt=""></a>
                        </div>
                        <p>
                            Luôn cập nhật liên tục các bộ truyện mới, truyện VIP để phục vụ độc giả
                        </p>
                        <p>
                            Đọc truyện hoàn toàn miễn phí, hỗ trợ đa thiết bị.
                        </p>
                        <p>
                            Email khiếu nại: kiennttna3@gmail.com
                        </p>
                        <p>
                            Giới thiệu Liên hệ Chính sách
                        </p>
                        <p>
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> CMANGA
                        </p>
                    </div>
                    <div class="col-lg-6">
                        <div class="hero__text">
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    Truyện tranh
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    Truyen tranh online
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    Đọc truyện tranh
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    Truyện tranh hot
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    Truyện tranh hay
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    Truyện ngôn tình
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    Manhwa
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    Manhhua
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    truyenqq
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    mi2manga
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    doctruyen3q
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    toptruyen
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    nettruyen
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    vlogtruyen
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    blogtruyen
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    truyentranhaudio
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    ocumeo
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    tusachxinh
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    vcomycs
                                </li>
                            </a>
                            <a href="{{ route('home') }}" class="label">
                                <li>
                                    truyengihot
                                </li>
                            </a>
                        </div>
                        <p>
                            Mọi thông tin và hình ảnh trên website đều được sưu tầm trên Internet.
                            Chúng tôi không sở hữu hay chịu trách nhiệm bất kỳ thông tin nào trên web này.
                            Nếu làm ảnh hưởng đến cá nhân hay tổ chức nào, khi được yêu cầu, chúng tôi sẽ xem xét và gỡ bỏ ngay lập tức.
                        </p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Search model Begin -->
        <div class="search-model">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-switch"><i class="icon_close"></i></div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Search here.....">
                </form>
            </div>
        </div>
        <!-- Search model end -->

        <!-- Js Plugins -->
        <script src="{{ asset('js/frontend/jquery-3.3.1.min.js') }}"></script>
        <script src="{{ asset('js/frontend/bootstrap.min.js') }}"></script>
        <script src="{{ asset('js/frontend/player.js') }}"></script>
        <script src="{{ asset('js/frontend/jquery.nice-select.min.js') }}"></script>
        <script src="{{ asset('js/frontend/mixitup.min.js') }}"></script>
        <script src="{{ asset('js/frontend/jquery.slicknav.js') }}"></script>
        <script src="{{ asset('js/frontend/owl.carousel.min.js') }}"></script>
        <script src="{{ asset('js/frontend/main.js') }}"></script>

        <script src="https://cdn.jsdelivr.net/npm/notyf@3/notyf.min.js"></script>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

        <script type="text/javascript">
            // js tìm kiếm bằng ajax
            let timer
            // Hàm để quản lý sự hiển thị của dropdown
            function handleDropdownVisibility() {
                // Ẩn dropdown khi click bên ngoài
                $(document).on('click', function (e) {
                    // Kiểm tra xem phần tử được click có nằm trong dropdown không
                    if (!$(e.target).closest('.dropdow').length) {
                        // Nếu không nằm trong dropdown, ẩn dropdown
                        $('#search_ajax').fadeOut()
                    }
                })
                // Ngăn chặn việc ẩn dropdown khi click vào ô tìm kiếm
                $('#keywords').on('click', function (e) {
                    // Ngừng sự kiện click để ngăn chặn việc ẩn dropdown
                    e.stopPropagation()
                    // Hiển thị dropdown
                    $('#search_ajax').fadeIn()
                })
            }
            // Sự kiện xử lý khi người dùng nhập liệu vào ô tìm kiếm
            $('#keywords').keyup(function () {
                // Lấy giá trị từ ô tìm kiếm
                var keywords = $(this).val()
                // Xóa bỏ timer trước đó (nếu có)
                clearTimeout(timer)
                // Kiểm tra nếu giá trị không rỗng
                if (keywords != '') {
                    // Đặt một timer trước khi thực hiện Ajax
                    timer = setTimeout(() => {
                        // Lấy giá trị của CSRF token
                        var _token = $('input[name="_token"]').val()
                        // Thực hiện yêu cầu Ajax đến server để tìm kiếm
                        $.ajax({
                            url: "{{ route('search_ajax') }}",
                            method: "POST",
                            data: {keywords: keywords, _token: _token},
                            success: function (data) {
                                // Cập nhật dropdown với kết quả tìm kiếm
                                $('#search_ajax').html(data)
                                // Kiểm tra xem phản hồi có chứa thông báo lỗi không
                                if (data.includes("error-message")) {
                                    // Hiển thị dropdown với thông báo lỗi
                                    $('#search_ajax').fadeIn()
                                } else {
                                    // Gọi hàm để xử lý việc hiển thị dropdown
                                    handleDropdownVisibility()
                                }
                            }
                        })
                    }, 200)

                } else {
                    // Nếu giá trị tìm kiếm rỗng, ẩn dropdown đi
                    $('#search_ajax').fadeOut()
                }
            })

            function toggleActive(e) {
                // Chuyển đổi trạng thái 'active' cho thẻ a được nhấp vào
                e.classList.toggle('actives')

                var list_Group = document.querySelectorAll('.list_Group')
                var list_grid = document.querySelectorAll('.list_grid')

                list_Group.forEach(function(item) {
                    if (e.classList.contains('actives')) {
                        item.style.display = 'none'
                    } else {
                        item.style.display = 'block'
                    }
                })

                list_grid.forEach(function(item) {
                    if (e.classList.contains('actives')) {
                        item.style.display = 'block'
                    } else {
                        item.style.display = 'none'
                    }
                })
            }
            //menu người dùng
            document.addEventListener('DOMContentLoaded', function () {
                var auth = document.querySelector('.header__right .auth')
                var dropdown = document.querySelector('.header__right .dropdown')

                // Hàm kiểm tra phần tử tồn tại
                function check(e) {
                    return e !== null && typeof(e) !== 'undefined'
                }

                // Kiểm tra tồn tại
                if (check(auth) && check(dropdown)) {
                    // Bắt sự kiện click vào phần tử
                    auth.addEventListener('click', function (event) {
                        // Ngăn chặn sự kiện click từ việc lan rộng
                        event.stopPropagation()
                        // Hiển thị hoặc ẩn
                        dropdown.style.display = (dropdown.style.display === 'none') ? 'block' : 'none'
                    })

                    // Bắt sự kiện click ra ngoài phần tử
                    document.addEventListener('click', function (event) {
                        // Nếu không click
                        if (!auth.contains(event.target) && !dropdown.contains(event.target)) {
                            // Ẩn
                            dropdown.style.display = 'none'
                        }
                    })
                }
            })
        </script>

        @stack('js')
    </body>
</html>
