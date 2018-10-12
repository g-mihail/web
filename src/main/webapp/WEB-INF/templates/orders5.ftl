
<#import "parts/common.ftl" as c>
<#import "pagination.ftl" as pagination />
<#import "spring.ftl" as spring />
<#import "parts/navmenu.ftl" as n>
<#import "parts/head.ftl" as he>
<@c.page>

<@n.navmenu>

</@n.navmenu>

<div class="container">

    <div class="orders-list-block">
        <h2>Заказы на строительные работы</h2>


        <!-- head -->

        <@he.head>

    </@he.head>


        <div class="layout-columns">

            <!-- order list -->
            <div class="orders-list-block__wrap">
                <div class="orders-list-block__wrap-inner">






                    <#list orders as order>
                    <div class="order-block" id=${order.id}>
                        <div class="header">

                            <span class="budget-icon budget-category-65"></span>
                            <div class="title">
                                <a target="_self" href="/orders/${order.id}">${order.title}</a>
                            </div>
                        </div>
                            <div class="details">
                            <a class="as-text" target="_self" href="/orders/${order.id}">
                                ${order.body}
                            </a>
                             </div>
                                 <div class="footer">
                                         <div class="location"><#if order.city??> ${order.city} </#if></div>
                                             <div class="created">
                                                 <#if order.timeago??> ${order.timeago}  </#if>
                                             </div>
                                 </div>
                    </div>
                </#list>
       <!-- <div class="pagination-wrapper">




            <a href="/boards/?page=895" target="_self" class="prev-page">← Предыдущие</a>





            <a href="/boards/?page=897" target="_self" class="next-page">Следующие →</a>




            <ul class="pagination" rem-pagination items="li" active-item="li.active">






                <li><a href="/boards/?page=892" target="_self">892</a></li>







                <li><a href="/boards/?page=893" target="_self">893</a></li>







                <li><a href="/boards/?page=894" target="_self">894</a></li>







                <li><a href="/boards/?page=895" target="_self">895</a></li>






                <li class="active">896</li>






                <li><a href="/boards/?page=897" target="_self">897</a></li>







                <li><a href="/boards/?page=898" target="_self">898</a></li>







                <li><a href="/boards/?page=899" target="_self">899</a></li>







                <li><a href="/boards/?page=900" target="_self">900</a></li>






            </ul>





        </div>-->

       <div  class="pagination-wrapper">

            <@pagination.first />
           <@pagination.previous />
            <!--

            -->
            <@pagination.numbers />
           <!---->
           <@pagination.next />
          <@pagination.last />

     </div>


        <!-- sidebar -->
        <div class="orders-list-block__sidebar sidebar-block hidden-sm" ng-class="'in'">



            <script>rem.require(['components/UI/SidebarRegionChoice/SidebarRegionChoice'])</script>
            <rtk-sidebar-region-choice

                    options="{
                            baseUrl: '/boards/',

                            categoryId: null,
                            regionId: null,
                            cityId: null
                           }"></rtk-sidebar-region-choice>


            <div class="sidebar-block__item work-categories">
                <div class="h3-like">Виды работ</div>

                <ul class="work-categories__category"
                    uib-dropdown
                    auto-close="disabled"
                    is-open="false">
                    <li>
                        <span uib-dropdown-toggle>Мелкие бытовые услуги</span>
                        <ul class="work-categories__subcategories dropdown-container">


                            <li class="subcategory">

                                <a target="_self" href="/boards/master_na_chas/">Мастер на час</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/podkljuchenie_bytovoj_tehniki/">Установка бытовой техники</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/ustanovka_i_zamena_zamkov/">Установка и вскрытие замков</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/klining_uborka_pomeschenij/">Уборка помещений, клининг</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/chehly_i_pokryvala/">Чехлы и покрывала</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/restavracija_vann_emalirovka_vkladyshi/">Эмалировка ванн</a>

                            </li>


                        </ul>
                    </li>
                </ul>

                <ul class="work-categories__category"
                    uib-dropdown
                    auto-close="disabled"
                    is-open="false">
                    <li>
                        <span uib-dropdown-toggle>Комплексные работы</span>
                        <ul class="work-categories__subcategories dropdown-container">


                            <li class="subcategory">

                                <a target="_self" href="/boards/stroitelstvo_domov_kottedzhej/">Строительство домов и коттеджей</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/remont_kvartiry/">Ремонт квартир и домов</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/remont_kuhni/">Ремонт кухни</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/kladka_pechej_i_kaminov/">Кладка печей и каминов</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/remont_vannoj/">Ремонт ванной</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/remont_ofisa/">Ремонт офиса</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/remont_tualeta/">Ремонт туалета</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/stroitelstvo_ban_i_saun/">Строительство бань и саун</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/stroitelstvo_bassejnov/">Строительство бассейнов</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/stroitelstvo_garazhej/">Строительство гаражей</a>

                            </li>


                        </ul>
                    </li>
                </ul>

                <ul class="work-categories__category"
                    uib-dropdown
                    auto-close="disabled"
                    is-open="false">
                    <li>
                        <span uib-dropdown-toggle>Монтажные работы</span>
                        <ul class="work-categories__subcategories dropdown-container">


                            <li class="subcategory">

                                <a target="_self" href="/boards/osteklenie_okna_balkony/">Остекление, окна, балконы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/dveri/">Двери</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/krovelnye_raboty/">Кровельные работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/almaznaya_rezka_i_sverlenie/">Алмазная резка и сверление</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/betonnye_raboty/">Бетонные работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/burenie/">Бурение</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/stroitelstvo_dorog/">Дорожное строительство</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/stroitelstvo_zaborov/">Заборы и ограждения</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/zemljanye_raboty/">Земляные работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/izoljacionnye_raboty/">Изоляционные работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/uslugi_kamenschikov/">Кладочные работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/hudozhestvennaja_kovka_i_lite/">Ковка и литье</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/izgotovlenie_lestnic/">Лестницы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/markizy_i_navesy/">Маркизы и навесы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/izgotovlenie_i_montazh_metallokonstrukcij/">Металлоконструкции</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/rolstavni_rollety_sekcionnye_vorota/">Рольставни и секционные ворота</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/svarochnye_raboty/">Сварочные работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/snos-i-demontazh/">Снос и демонтаж</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/stroitelstvo_srubov/">Срубы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/stoljarnye_i_plotnickie_raboty/">Столярные и плотницкие работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/fasadnye_raboty/">Фасадные работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/stroitelstvo_fundamenta/">Фундамент</a>

                            </li>


                        </ul>
                    </li>
                </ul>

                <ul class="work-categories__category"
                    uib-dropdown
                    auto-close="disabled"
                    is-open="false">
                    <li>
                        <span uib-dropdown-toggle>Отделочные работы</span>
                        <ul class="work-categories__subcategories dropdown-container">


                            <li class="subcategory">

                                <a target="_self" href="/boards/shtukaturno_maljarnye_raboty/">Малярные и штукатурные работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/obojnye-raboty/">Обойные работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/plitochnye_raboty/">Плиточные работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/gipsokartonnye-raboty/">Гипсокартонные работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/izgotovlenie_i_montazh_lepniny/">Лепнина</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/mozaichnye_raboty/">Мозаичные работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/napolnye_pokrytiya/">Напольные покрытия</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/montazh_potolkov/">Потолки</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/ustrojstvo_promyshlennyh_polov/">Промышленные полы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/hudozhestvennaja_rospis_sten/">Роспись стен</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/montazh_stenovyh_panelej/">Стеновые панели</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/ustrojstvo_polov_stjazhka_vyravnivanie/">Стяжка</a>

                            </li>


                        </ul>
                    </li>
                </ul>

                <ul class="work-categories__category"
                    uib-dropdown
                    auto-close="disabled"
                    is-open="false">
                    <li>
                        <span uib-dropdown-toggle>Инженерные системы</span>
                        <ul class="work-categories__subcategories dropdown-container">


                            <li class="subcategory">

                                <a target="_self" href="/boards/vodosnabzhenie-i-kanalizatsiia/">Водоснабжение и канализация</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/elektromontazhnye_raboty/">Электромонтажные работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/santehnicheskie_raboty/">Сантехнические работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/alternativnye_istochniki_energii/">Альтернативные источники энергии</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/gazifikacija/">Газификация</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/kondicionirovanie_i_ventilyaciya/">Кондиционирование и вентиляция</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/lifty_i_eskalatory/">Лифты и эскалаторы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/otoplenie/">Отопление</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/ohrannye_sistemy_i_kontrol_dostupa/">Охранные системы и контроль доступа</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/montazh_sistem_pozharnoj_bezopasnosti/">Пожарные сигнализации</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/montazh_sistem_videonabljudenija_i_ohrany/">Системы видеонаблюдения</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/sistemy_pozharotusheniya/">Системы пожаротушения</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/ustanovka_antenn_podkljuchenie_telefona_interneta/">Слаботочные системы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/montazh_teplogo_pola/">Теплый пол</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/montazh_truboprovodov/">Трубопроводы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/sistemy_umnyj_dom/">Умный дом</a>

                            </li>


                        </ul>
                    </li>
                </ul>

                <ul class="work-categories__category"
                    uib-dropdown
                    auto-close="disabled"
                    is-open="false">
                    <li>
                        <span uib-dropdown-toggle>Благоустройство</span>
                        <ul class="work-categories__subcategories dropdown-container">


                            <li class="subcategory">

                                <a target="_self" href="/boards/landshaftnyj_dizajn/">Ландшафтный дизайн</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/naruzhnoe_osveschenie/">Уличное освещение</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/ozelenenie/">Озеленение</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/iskusstvennye_vodoemy_i_prudy/">Искусственные водоемы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/izgotovlenie_sadovoj_skulptury/">Малые архитектурные формы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/stroitelstvo_fontanov/">Фонтаны</a>

                            </li>


                        </ul>
                    </li>
                </ul>

                <ul class="work-categories__category"
                    uib-dropdown
                    auto-close="disabled"
                    is-open="false">
                    <li>
                        <span uib-dropdown-toggle>Проектирование</span>
                        <ul class="work-categories__subcategories dropdown-container">


                            <li class="subcategory">

                                <a target="_self" href="/boards/dizajn_interera/">Дизайн интерьера</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/inzhenernoe_proektirovanie/">Инженерное проектирование</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/geodezicheskie_raboty/">Геодезические работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/geologicheskie_izyskaniya/">Геологические изыскания</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/mezhevanie_i_kadastr/">Межевание и кадастр</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/proektirovanie_zhilyh_domov/">Проектирование зданий</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/smetnye_raboty/">Сметные работы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/pereplanirovka_i_soglasovanie/">Согласование перепланировок</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/tehnicheskij_nadzor/">Технический надзор</a>

                            </li>


                        </ul>
                    </li>
                </ul>

                <ul class="work-categories__category"
                    uib-dropdown
                    auto-close="disabled"
                    is-open="false">
                    <li>
                        <span uib-dropdown-toggle>Обслуживание</span>
                        <ul class="work-categories__subcategories dropdown-container">


                            <li class="subcategory">

                                <a target="_self" href="/boards/vyvoz_musora_i_snega/">Вывоз мусора</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/gruzoperevozki/">Грузоперевозки</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/uborka_territorij/">Уборка территорий</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/arenda_oborudovanija/">Аренда оборудования</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/arenda_stroitelnoj_tehniki/">Аренда строительной техники</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/vysotnye_raboty_promyshlennyj_alpinizm/">Высотные работы</a>

                            </li>


                        </ul>
                    </li>
                </ul>

                <ul class="work-categories__category"
                    uib-dropdown
                    auto-close="disabled"
                    is-open="false">
                    <li>
                        <span uib-dropdown-toggle>Интерьер</span>
                        <ul class="work-categories__subcategories dropdown-container">


                            <li class="subcategory">

                                <a target="_self" href="/boards/izgotovlenie_i_sborka_mebeli/">Мебель</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/poshiv_shtor_i_tekstilnyj_dizajn/">Шторы и карнизы</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/stroitelstvo_sten_i_peregorodok/">Офисные перегородки</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/dekorirovanie_intererov/">Декорирование интерьеров</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/zhaljuzi/">Жалюзи</a>

                            </li>

                            <li class="subcategory">

                                <a target="_self" href="/boards/fitodizajn/">Фитодизайн</a>

                            </li>


                        </ul>
                    </li>
                </ul>

            </div>


            <!--noindex-->
            <rtk-sticky hidden offset="20"
                        threshold=".orders-list-block__wrap .order-block:last"
                        watch-heights=".orders-list-block__sidebar">
                <div class="sidebar-block__item scroll-up-block" rem-scroll-to=".orders-list-block">
                    <span class="arrow-up"></span>
                    Выбрать регион и&nbsp;виды работ
                </div>
            </rtk-sticky>
            <!--/noindex-->

        </div>






              </div>
          </div>
      </div>
</div>
</div>



</@c.page>
