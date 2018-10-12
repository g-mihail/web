<#import "parts/header.ftl" as h>
<#import "parts/showfields.ftl" as sh>

<!DOCTYPE html>
<html lang="ru" id="app">
<head>
    <title ng-bind="head.pageTitle">Добавить тендер, заказ на Ремонтник.ру.</title>

<meta name="description" content="Заказы по ремонту и строительству.">
<meta name="keywords" content="ремонт, заказ, строительство">

    <meta name="robots" content="index, follow">



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
<link rel="stylesheet" href="/resources/css/redesign.css?1.2.852">







</head>
<body >

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>








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
    <symbol id="instagram" viewBox="3 3 18 18">
        <path d="M 8 3 C 5.243 3 3 5.243 3 8 L 3 16 C 3 18.757 5.243 21 8 21 L 16 21 C 18.757 21 21 18.757 21 16 L 21 8 C 21 5.243 18.757 3 16 3 L 8 3 z M 8 5 L 16 5 C 17.654 5 19 6.346 19 8 L 19 16 C 19 17.654 17.654 19 16 19 L 8 19 C 6.346 19 5 17.654 5 16 L 5 8 C 5 6.346 6.346 5 8 5 z M 17 6 A 1 1 0 0 0 16 7 A 1 1 0 0 0 17 8 A 1 1 0 0 0 18 7 A 1 1 0 0 0 17 6 z M 12 7 C 9.243 7 7 9.243 7 12 C 7 14.757 9.243 17 12 17 C 14.757 17 17 14.757 17 12 C 17 9.243 14.757 7 12 7 z M 12 9 C 13.654 9 15 10.346 15 12 C 15 13.654 13.654 15 12 15 C 10.346 15 9 13.654 9 12 C 9 10.346 10.346 9 12 9 z"></path>
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

    <@h.header>

</@h.header>

<script async src="/resources/js/app.min/mobile-menu.js"></script>
</div>









        <div class="content-wrapper">


<div>
<div class="order-form ng-scope loaded">
    <section class="wide-block">
        <div class="container">
            <h1>Добавить заказ</h1>


            <div class="content clearfix">

<div class="add-order-block">
    <form class="add-order-form" name="orderForm"  action="/addorder"  method="post" enctype="multipart/form-data">
        <fieldset>
            <div class="add-order-block__row">
                <label>Заголовок</label>

                <div class="form-element">
                    <input placeholder="Заголовок. Например: «Требуется ремонт двухкомнатной квартиры»"
                           type="text" name="title" value="<#if title??>${title}</#if>">

                </div>
            </div>





            <div class="add-order-block__row add-order-block__description-block">
                <div class="add-order-details-block">
                    <label>Подробности</label>
                </div>
                <div class="form-element">
                    <div class="textarea-wrapper">
 <textarea name="details" cols="30" rows="10" placeholder="Подробности. Укажите:
— Размеры, объем и другие параметры объекта
— Материалы, которые предполагается использовать
— Когда предполагается завершить работы
— Прочие особенности, которые могут быть важны исполнителю"><#if details??>${details}</#if></textarea>
                    </div>

                  <!--  <div ng-if="$ctrl.hasNotice || $ctrl.maxLength" class="ng-scope">

                        <div ng-if="$ctrl.hasNotice" ng-transclude="notice" class="ng-scope">
                        <input-notice class="ng-scope">
                        Пожалуйста, не указывайте здесь контакты.
                        <span class="nowrap">
                                <span class="pseudo-link black" ng-click="showWhyNoContacts()">Почему?</span>
                            </span>
                    </input-notice>
                        </div>

                    </div>-->


                </div>
            </div>






            <div class="add-order-block__row">

                <!-- <div class="js-uploaded">

                 </div>
                 <div class="js-attach">
                     <span class="ui-icons icons-attached-file" ng-show="!(order.pics.length + newImages.length)"></span>
                     <a href="" class="file-attach-pseudolink" ng-show="order.pics.length + newImages.length < maxImagesAmount">
                        <span class="link ng-pristine ng-untouched ng-valid ng-binding ng-not-empty ng-valid-max-list-length" type="file" accept="image/*" name="images" ng-show="order.pics.length + newImages.length < maxImagesAmount" ng-model="newImages" rem-max-list-length="10" ngf-drop="" ngf-select="" ngf-change="updatePics($files, $invalidFiles)" ngf-keep="'distinct'" ngf-multiple="true" ngf-max-size="10MB" ngf-pattern="'image/*'">
                            Приложить изображение
                        </span>
                     </a>
                     <span ng-show="order.pics.length + newImages.length >= maxImagesAmount" class="link ng-hide">нельзя больше</span>
                 </div>
                    -->




                <!-- <div class="js-attach">

                    <a href="" class="file-attach-pseudolink">
                        <span type="file" accept="image/*" name="images">
                            Приложить изображение
                        </span>
                    </a>

                </div>-->

                <div class="add-order-details-block">
                    <label>Приложить изображение</label>
                </div>
                <span>
               <input type="file" name="file" multiple accept="image/*">
                </span>
            </div>




            <div class="add-order-block__row">
                <label >Город объекта</label>
                <div class="form-element">
                  <!--  <input type="text" name="location" placeholder="Барнаул, ул Балтийская 5" value="<#if location??>${location}</#if>"> -->

                    <select name="location" style="width: 100%">
                        <option label="" value="" <#if (cityb?? && cityb == "")> selected="selected" </#if> ></option>
                    <option label="Барнаул" value="Барнаул"  <#if (cityb?? && cityb == "barnaul")> selected="selected" </#if> >Барнаул</option>
                <option label="Заринск" value="Заринск" <#if (cityb?? && cityb == "zarinsk")> selected="selected" </#if> >Заринск</option>
            <option label="Бийск" value="Бийск" <#if (cityb?? && cityb == "bijsk")> selected="selected" </#if> >Бийск</option>
        </select>

                </div>
            </div>


            <div class="add-order-block__row">
                <label>Цена</label>
                <div class="form-element">
                    <input type="text" name="price" placeholder="700 руб." value="">
                </div>
            </div>

            <input type="hidden" name="_csrf" value="${_csrf.token}"/>




       <!-- <div ng-if="!isAuthenticated">
            <div class="add-order-block__row add-order-block__auth-block">
                <div class="social-fields">
                    <label>Как к вам обращаться? (публикуется)</label>
                    <div class="form-element" ng-class="orderForm.remValidator.errorClass('name')">
                        <input name="name" type="text" required
                               rem-capitalize-first="name"
                               rem-cyrillic="true"
                               ng-model="order.name">
                        <rtk-error-list form="orderForm" field="name" errors="{
                            cyrillic: 'Специальные символы и цифры недопустимы'
                        }"></rtk-error-list>
                    </div>
                    <label>Электронная почта (не публикуется)</label>
                    <div class="form-element" ng-class="orderForm.remValidator.errorClass('email')">
                        <input type="email" name="email" required
                               ng-change="orderForm.remValidator.resetErrors()"
                               ng-model="order.email">
                        <rtk-error-list form="orderForm" field="email" errors="{
                            email: 'Некорректный адрес электронной почты'
                        }"></rtk-error-list>
                    </div>

                    <label>Телефон (не публикуется)</label>
                    <div class="user-phone">
                        <rtk-first-phone form="orderForm"></rtk-first-phone>
                        <p>Никаких лишних звонков! Ни&nbsp;один исполнитель не&nbsp;увидит ваш номер,
                            пока вы&nbsp;сами не&nbsp;передадите его.</p>
                    </div>

                </div>
                <div class="social-auth">
                    <rtk-social-profile ng-if="social.profile"
                                        profile="social.profile"
                                        on-cancel="social.clear()"></rtk-social-profile>
                    <div ng-if="!social.profile">
                        <h3>Или войти через</h3>
                        <rtk-social-buttons on-click="social.auth($id)"></rtk-social-buttons>
                    </div>
                </div>
            </div>



            <div class="add-order-block__row">
                <div class="form-element agreement-block" ng-class="orderForm.remValidator.errorClass('agreement')">
                    <div>
                        <input type="checkbox" id="agreement" name="agreement" class="checkbox-custom" ng-model="isAgree" required>
                        <label for="agreement" class="checkbox-custom-view">
                            Я&nbsp;согласен с&nbsp;<a href="/dogovor/" target="_blank">правилами сервиса</a>
                        </label>
                    </div>
                    <rtk-error-list form="orderForm" field="agreement" errors="{
                        required: 'Необходимо согласиться с правилами сервиса'
                    }"></rtk-error-list>
                    <rtk-error-list form="orderForm"></rtk-error-list>
                </div>
            </div>
        </div> -->

            <@sh.showfields>

        </@sh.showfields>

        </fieldset>

        <div class="add-order-block__button-block">
            <button type="submit" class="btn btn-orange">
                Сохранить
            </button>
        </div>
    </form>
</div>

<script type="text/ng-template" id="orderTitle.html">
    <div class="title">Начните с заголовка. Например:</div>
    <p>
        <span>Требуется ремонт в&nbsp;квартире</span><span>Укладка ламината в&nbsp;офисе</span><span>Строительство дома в&nbsp;Талдоме</span>
    </p>
</script>
<script type="text/ng-template" id="orderDetails.html">
    <div class="title">Подробно опишите работы. Обязательно укажите:</div>
    <ul>
        <li>Размеры, объемы, параметры</li>
        <li>Материалы, которые предполагается использовать</li>
        <li>Прочие особенности работ</li>
    </ul>
</script>
<script type="text/ng-template" id="orderDate.html">
    <div class="title">Укажите удобное время для проведения работ.</div>
    <p>
        Если для вас это не&nbsp;важно, можно ничего не&nbsp;указывать.
    </p>
</script>
<script type="text/ng-template" id="orderBudget.html">
    <div class="title">Укажите категорию заказа, исходя из&nbsp;ориентировочного бюджета работ</div>
    <p>
        Это важно, так как поможет найти тех исполнителей, которые будут готовы взяться именно за&nbsp;ваш заказ.
        Все исполнители подписаны на&nbsp;заказы определенных объемов. Стоимость материалов учитывать не&nbsp;нужно.
    </p>
</script>
<script type="text/ng-template" id="orderLocation.html">
    <div class="title">Введите адрес расположения объекта:</div>
    <p>
        На&nbsp;заказ смогут откликнуться исполнители, которые находятся поблизости. Возможно, ваш мастер живет в&nbsp;соседнем доме.<br>
        Можно отметить ближайшее здание, узнаваемый ориентир, станцию метро.
    </p>
</script>

            </div>

        </div>
    </section>

    <!--<section class="wide-block order-added-page" ng-show="!isAuthenticated && orderPosted">
        <div class="container">
            <div class="order-added-block">
                <div class="order-added-block__icon"></div>
                <div class="order-added-block__phrase">Проверьте почту {[{ order.email }]}</div>
                <p>Мы отправили вам ссылку для подтверждения заказа</p>
                <div class="order-added-block__actions">
                    <div>
                        <span class="as-link" ng-click="resetEmail()">Изменить почту</span>
                    </div>
                    <div>
                        <span ng-show="attempts.left && attempts.countdown">
                            Отправить повторно<br/>
                            Будет доступно через {[{ attempts.countdown | date:'m:ss' }]}
                        </span>
                        <a ng-show="!loading && attempts.left && !attempts.countdown" href="" ng-click="resendEmail()">
                            Отправить повторно
                        </a>
                        <a ng-show="!attempts.left" href="/pages/contacts" target="_self">
                            Связаться с поддержкой
                        </a>
                        <p ng-show="loading">
                            <i class="icon__loading"></i>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
</div>
</div>

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
                    <li><a target="_self" href="/boards/my/">Заказы</a></li>
                    <li><a target="_self" href="/catalog/">Мастера и бригады</a></li>
                    <li><a target="_self" href="/forum/">Сообщество</a></li>
                </ul>
            </div>
            <div class="footer-block__nav-block long">
                <ul>
                    <li><a target="_self" href="/pages/customers">Как это работает?</a></li>

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
                    <a target="_self" href="https://www.instagram.com/remontnik.ru/" class="ig">
                        <svg class="icon">
                            <use xlink:href="#instagram"></use>
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









</body>
</html>
