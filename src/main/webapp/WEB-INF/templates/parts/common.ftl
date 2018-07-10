<#macro page>
<!DOCTYPE html>
<html lang="ru">
<head>
    <title>Добавить заказ на Ремонтник.ру.</title>
    <meta charset="utf-8">
    <link rel="icon" href="/favicon.ico">
    <link href="/favicon.ico" rel="shortcut icon">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180x180.png">
    <style type="text/css">
    svg {
        display: none;
    }
</style>
    <link rel="stylesheet" href="/resources/css/redesign.css">
    <script>
    document.documentElement.classList && document.documentElement.classList.add('js');
</script>

</head>
<body vocab="https://schema.org/">
<svg style="display: none" version="1.1" xmlns="http://www.w3.org/2000/svg" xml:space="preserve">
    <symbol id="logo" viewBox="0 0 200 200">
        <path fill-rule="evenodd" d="M10.256,127.197c0,0-4.169,0.309-6.054-0.996
            c-1.812-1.253-3.124-4.713,0.193-8.032C9.397,113.157,91.336,9.986,93.949,6.144c3.481-5.113,7.592-4.881,11.073,0.003
            c1.021,1.43,17.989,22.528,36.843,45.89c-0.058,0.031-0.058-7.751-0.058-9.065c0-2.112,0.859-6.696,6.155-6.693l13.423,0.009
            c3.869,0,5.517,3.478,5.517,7.598c-0.006,1.485,0.034,39.16,0,39.123c14.765,18.206,26.843,32.999,28.005,34.163
            c6.712,6.709-0.721,10.44-3.044,10.434l-9.374-0.021c-3.723-0.009-7.057,1.415-7.057,6.302v47.094
            c0,5.352-35.761,17.155-75.252,17.017c-39.615-0.141-75.863-9.722-75.848-14.786c0.012-5.345-0.015-41.865,0-48.359
            c0.012-6.504-2.051-7.528-6.216-7.638C11.958,127.054,10.256,127.197,10.256,127.197z M87.964,97.136c0,0-0.685-4.532,3.915-4.905
            c4.603-0.37,16.342-1.012,21.926,2.304s9.407,8.142,9.407,14.756c0,6.614-1.158,11.247-5.477,15.104
            c-3.918,3.499-8.695,4.56-16.064,4.496c-7.054-0.058-13.707-1.372-13.707-5.321V97.136z M65.189,77.881c0,0-0.095-5.009,7.576-6.039
            c7.674-1.03,31.565-2.894,45.511,0.813c13.952,3.707,24.392,13.943,26.58,26.914c2.408,14.267,0.254,30.162-10.636,40.483
            c-8.625,8.179-19.361,10.547-30.933,10.327c-11.287-0.214-15.361-5.242-15.361,2.039v17.02c0,2.647-0.474,3.686-3.6,4.716
            c-1.137,0.468-3.793,0.969-7.583,0.96c-3.79-0.012-7.769-0.535-7.864-0.724c-3.029-0.293-3.692-2.185-3.692-4.642V77.881z"></path>
    </symbol>
    <symbol id="twitter" viewBox="0 0 100 100">
        <path d="M98.705,19.707c-0.139-0.165-0.371-0.221-0.568-0.131c-2.919,1.295-5.99,2.226-9.153,2.776
            c3.358-2.526,5.86-6.024,7.142-10.035c0.062-0.192-0.002-0.402-0.159-0.527c-0.158-0.125-0.377-0.141-0.55-0.038
            c-3.782,2.243-7.878,3.824-12.179,4.701c-3.813-3.956-9.135-6.219-14.644-6.219c-11.204,0-20.318,9.114-20.318,20.317
            c0,1.355,0.131,2.697,0.391,4c-15.518-0.958-30.028-8.408-39.894-20.509c-0.101-0.124-0.254-0.193-0.414-0.177
            c-0.159,0.012-0.301,0.102-0.381,0.239c-1.8,3.088-2.751,6.621-2.751,10.215c0,6.229,2.83,12.053,7.649,15.896
            c-2.481-0.298-4.904-1.079-7.089-2.292c-0.147-0.083-0.33-0.082-0.477,0.003c-0.147,0.084-0.24,0.24-0.244,0.41l-0.002,0.26
            c0,8.946,5.895,16.801,14.282,19.409c-2.209,0.357-4.501,0.332-6.754-0.098c-0.166-0.03-0.34,0.027-0.454,0.155
            c-0.113,0.128-0.151,0.306-0.099,0.469c2.515,7.85,9.503,13.355,17.637,14.041c-6.785,4.97-14.805,7.589-23.279,7.589
            c-1.561,0-3.133-0.092-4.673-0.274c-0.22-0.025-0.438,0.106-0.514,0.318c-0.076,0.213,0.005,0.45,0.195,0.572
            c9.17,5.88,19.773,8.988,30.664,8.988c35.625,0,56.913-28.938,56.913-56.914c0-0.779-0.015-1.554-0.046-2.327
            c3.843-2.811,7.141-6.252,9.802-10.235C98.857,20.11,98.844,19.873,98.705,19.707z"></path>
    </symbol>
    <symbol id="vkontakte" viewBox="0 0 100 100">
        <path d="M94.242,66.929c-2.873-3.446-6.254-6.387-9.453-9.509
            c-2.886-2.816-3.069-4.449-0.748-7.698c2.532-3.546,5.255-6.956,7.809-10.486c2.385-3.299,4.824-6.589,6.078-10.539
            c0.796-2.513,0.092-3.623-2.485-4.063c-0.444-0.077-0.903-0.081-1.355-0.081l-15.289-0.018c-1.883-0.028-2.924,0.793-3.59,2.462
            c-0.9,2.256-1.826,4.51-2.898,6.687c-2.429,4.936-5.143,9.707-8.949,13.747c-0.839,0.891-1.767,2.017-3.169,1.553
            c-1.754-0.64-2.27-3.53-2.242-4.507L57.936,26.83c-0.34-2.521-0.899-3.645-3.402-4.135l-15.882,0.003
            c-2.12,0-3.183,0.819-4.315,2.145c-0.653,0.766-0.85,1.263,0.492,1.517c2.636,0.5,4.121,2.206,4.515,4.849
            c0.632,4.223,0.588,8.463,0.224,12.703c-0.107,1.238-0.32,2.473-0.811,3.629c-0.768,1.817-2.008,2.187-3.637,1.069
            c-1.475-1.012-2.511-2.44-3.525-3.874c-3.809-5.382-6.848-11.186-9.326-17.285c-0.716-1.762-1.951-2.83-3.818-2.859
            c-4.587-0.073-9.175-0.085-13.762,0.004c-2.76,0.052-3.583,1.392-2.459,3.894c4.996,11.113,10.557,21.918,17.816,31.76
            c3.727,5.051,8.006,9.51,13.534,12.67c6.265,3.582,13.009,4.66,20.112,4.327c3.326-0.156,4.325-1.021,4.479-4.336
            c0.104-2.267,0.361-4.523,1.48-6.56c1.098-2,2.761-2.381,4.678-1.136c0.959,0.623,1.766,1.415,2.53,2.252
            c1.872,2.047,3.677,4.158,5.62,6.136c2.437,2.481,5.324,3.946,8.954,3.646l14.054,0.002c2.264-0.148,3.438-2.923,2.138-5.451
            C96.712,70.031,95.514,68.454,94.242,66.929z"></path>
    </symbol>
    <symbol id="fb_flat" viewBox="0 0 100 100">
        <path d="M73.099,15.973l-9.058,0.004c-7.102,0-8.477,3.375-8.477,8.328v10.921h16.938l-0.006,17.106H55.564v43.895H37.897V52.332
            h-14.77V35.226h14.77V22.612C37.897,7.972,46.84,0,59.9,0L73.1,0.021L73.099,15.973L73.099,15.973z"></path>
    </symbol>
    <symbol id="facebook" viewBox="0 0 61 61">
        <path d="M57.378,0.001H3.352C1.502,0.001,0,1.5,0,3.353v54.026c0,1.853,1.502,3.354,3.352,3.354h29.086V37.214h-7.914v-9.167h7.914
            v-6.76c0-7.843,4.789-12.116,11.787-12.116c3.355,0,6.232,0.251,7.071,0.36v8.198l-4.854,0.002c-3.805,0-4.539,1.809-4.539,4.462
            v5.851h9.078l-1.187,9.166h-7.892v23.52h15.475c1.852,0,3.355-1.503,3.355-3.351V3.351C60.731,1.5,59.23,0.001,57.378,0.001z"></path>
    </symbol>
    <symbol id="call" viewBox="0 0 23 23">
        <path d="M16.5 11h-5.8l2.6-2.6c.2-.2.2-.5 0-.7s-.5-.2-.7 0l-3.5 3.5s-.1.1-.1.2v.3c0 .1.1.1.1.2l3.5 3.5c.1.1.2.1.4.1s.3 0 .4-.1c.2-.2.2-.5 0-.7L10.7 12h5.8c.3 0 .5-.2.5-.5s-.2-.5-.5-.5z"></path>
        <path d="M20.5 2H8.9c0-.9-.7-1.6-1.6-1.8C6.7.1 6 0 5.4 0c-.5 0-.9 0-1.4.1-.3 0-.7.2-1 .2l-.1.1c-.6.5-1 1.2-1.3 1.8C1 3.5.6 4.8.4 6.2.1 7.8 0 9.4 0 11.1v.9c0 1.6.1 3.3.4 4.9.2 1.4.6 2.7 1.2 3.9.3.7.7 1.3 1.3 1.8l.1.1c.3.1.7.2 1 .2.5.1.9.1 1.4.1.7 0 1.3-.1 2-.2.8-.2 1.5-.9 1.6-1.8h11.6c1.4 0 2.5-1.1 2.5-2.5v-14C23 3.1 21.9 2 20.5 2zM7.8 21.4c-.1.2-.4.4-.6.4-.7.1-1.2.2-1.8.2-.4 0-.8 0-1.2-.1-.2 0-.4-.1-.6-.1h-.1c-.4-.3-.7-.8-1-1.5-.5-1-.8-2.1-1.1-3.6-.3-1.4-.4-2.8-.4-4.8v-.5-.3c0-1.9.1-3.4.4-4.7.3-1.6.6-2.7 1.1-3.7.3-.6.6-1.1 1-1.5h.1c.2 0 .4-.1.6-.1C4.6 1 5 1 5.4 1c.6 0 1.1.1 1.7.2.2 0 .5.2.6.4.2.2.2.4.2.6-.2 1-.4 2.1-.6 3.1l-.2.8c-.1.3-.2.6-.8.8-.5.2-.9.3-1.3.4-.6.1-.9.5-1 1.1-.1 1-.2 2-.2 3.1s0 2.1.2 3.1c.1.6.4 1 1 1.1.4.1.9.2 1.3.4.6.2.7.5.8.8l.2.8c.2 1 .4 2.1.6 3.1 0 .2 0 .4-.1.6zM22 18.5c0 .8-.7 1.5-1.5 1.5H8.7c0 .2.1.4.1.6-.3-1.3-.5-2.6-.8-3.9-.2-.8-.7-1.3-1.4-1.6-.4-.1-.9-.3-1.4-.4-.1 0-.2-.1-.2-.2-.1-1-.2-2-.1-3 0-1 0-2 .1-3 0-.1.1-.2.2-.2.5-.2.9-.3 1.4-.4.8-.3 1.3-.8 1.4-1.6.2-1.1.5-2.2.7-3.3h11.8c.8 0 1.5.7 1.5 1.5v14z"></path>
    </symbol>
    <symbol id="message" viewBox="0 0 22 19">
        <path d="M19.5 0h-17C1.1 0 0 1.1 0 2.5v14C0 17.9 1.1 19 2.5 19h17c1.4 0 2.5-1.1 2.5-2.5v-14C22 1.1 20.9 0 19.5 0zm0 1c.3 0 .6.1.9.3l-8.3 8.3c-.6.6-1.6.6-2.1 0L1.6 1.3c.3-.2.6-.3.9-.3h17zM21 16.5c0 .8-.7 1.5-1.5 1.5h-17c-.8 0-1.5-.7-1.5-1.5v-14c0-.1 0-.3.1-.4l8.2 8.2c.4.4 1 .7 1.7.7s1.3-.3 1.8-.7L21 2.1v14.4z"></path>
    </symbol>
</svg>


<section class="all-wrappper" id="wrapper">



    <div class="position-switch">


        <header class="site-header">
            <div class="container">
                <a href="/" target="_self" class="logo-block titled" title="Ремонтник.ру">
            <span class="logo">
                <svg class="icon">
                    <use xlink:href="#logo"></use>
                </svg>
                <span class="hidden-lg">Ремонтник.ру</span>
            </span>
                    <span class="title hidden-sm">Ремонтник.ру</span>
                </a>

                <div class="menu-toggle hidden-lg">
                    <div class="first"></div>
                    <div class="second"></div>
                    <div class="third"></div>
                </div>


                <nav class="pull-right hidden-sm">
                    <ul>

                        <li><a target="_self" href="/pages/customers">Как это работает?</a></li>

                        <li><a target="_self" href="/auth/login/">Войти</a></li>


                    </ul>
                </nav>


                <nav class="pull-right hidden-sm">
                    <ul>

                        <li><a target="_self" href="/boards/">Заказы</a></li>

                        <li><a target="_self" href="/catalog/">Мастера и бригады</a></li>

                        <li><a target="_self" href="/portfolio/">Фото работ</a></li>


                    </ul>
                </nav>

                <!-- мобильное меню -->
                <div class="menu-wrapper hidden-lg">
                    <div>

                        <nav>
                            <ul>

                                <li class="active"><a target="_self" href="/add">Добавить заказ</a></li>

                                <li><a target="_self" href="/boards/">Заказы</a></li>

                                <li><a target="_self" href="/catalog/">Мастера и бригады</a></li>

                                <li><a target="_self" href="/portfolio/">Фото работ</a></li>


                            </ul>
                        </nav>
                        <nav>
                            <ul>

                                <li><a target="_self" href="/pages/customers">Как это работает?</a></li>

                                <li><a target="_self" href="/registration/">Стать исполнителем</a></li>


                            </ul>
                        </nav>
                        <nav>
                            <ul>


                                <li><a target="_self" href="/pages/about">О проекте</a></li>

                                <li><a target="_self" href="/pages/contacts">Связаться</a></li>

                                <li><a target="_self" href="/auth/login/">Войти</a></li>



                            </ul>
                        </nav>

                    </div>
                </div>
            </div>
        </header>
        <script async src="/resources/js/app.min/mobile-menu.js"></script>
    </div>


    <div class="content-wrapper">


<#nested>



    </div>


<div id="rootFooter"></div>
</section>


<footer class="footer-block">
    <div class="container">
        <div class="footer-block__logo-block">
            <a target="_self" href="/" class="footer-block__logo">
                <svg class="icon">
                    <use xlink:href="#logo"></use>
                </svg>
                <span>Ремонтник.ру</span>
            </a>
            <a target="_self" href="/boards/add/" class="btn btn-footer">Добавить заказ</a>
        </div>
        <div class="footer-block__nav-block">
            <ul>
                <li><a target="_self" href="/boards/">Заказы</a></li>
                <li><a target="_self" href="/catalog/">Мастера и бригады</a></li>
                <li><a target="_self" href="/forum/">Сообщество</a></li>
            </ul>
        </div>
        <div class="footer-block__nav-block long">
            <ul>
                <li><a target="_self" href="/pages/customers">Как это работает?</a></li>
                <li><a target="_self" href="/registration/">Стать исполнителем</a></li>
                <li><a target="_self" href="/dogovor">Пользовательское соглашение</a></li>
            </ul>
        </div>
        <div class="footer-block__feedback-block">
            <div class="footer-block__feedback">
                <a target="_self" href="/pages/about">О&nbsp;проекте</a>
                <a target="_self" href="/pages/contacts">Связаться</a>
            </div>
            <div class="footer-block__socials">
                <a target="_self" href="https://vk.com/remontnik_ru" class="vk">
                    <svg class="icon">
                        <use xlink:href="#vkontakte"></use>
                    </svg>
                </a>
                <a target="_self" href="https://twitter.com/remontnik_ru" class="tw">
                    <svg class="icon">
                        <use xlink:href="#twitter"></use>
                    </svg>
                </a>
                <a target="_self" href="https://www.facebook.com/remontnik.ru/" class="fb">
                    <svg class="icon">
                        <use xlink:href="#facebook"></use>
                    </svg>
                </a>
            </div>
        </div>
    </div>
</footer>












<div id="outdated"></div>
<script src="/resources/outdated-browser/outdatedbrowser/outdatedbrowser.min.js"></script>
<script>
    outdatedBrowser({
        lowerThan: 'IE11',
        languagePath: '/resources/outdated-browser/outdatedbrowser/lang/ru.html'
    });
</script>


</body>
</html>