<pele-screen enter-delay="0">
    <fa-header-footer-layout fa-options="{headerSize:main.viewSize.navbarHeight, footerSize : main.viewSize.tabbarHeight}">
        <!-- HEADER -->
        <fa-modifier>
            <pe-navbar>
                <!-- LEFT BUTTON -->
                <div class="pe-navbar-button left" ng-click="conversations.goBack()">
                    <i class="icon ion-chevron-left"></i>
                    Back
                </div>
                <!-- TITLE -->
                <div class="pe-navbar-title">
                    Conversations
                </div>

                <!-- RIGHT -->
                <div class="pe-navbar-button right">
                </div>

            </pe-navbar>
        </fa-modifier>

        <!-- CONTENT -->
        <fa-modifier>
            <!--<fa-container-surface fa-options="{properties : {overflow : 'hidden'}}" >-->
                <fa-scroll-view fa-pipe-from="conversations.scrollViewEventHandler">
                    <fa-view ng-repeat="item in conversations.items">
                        <fa-modifier fa-size="[undefined, 75]">
                            <fa-surface  fa-click="conversations.goToChat(item)" fa-tap="conversations.goToChat(item)" class="pe-full-height pe-scrollview-offset-item-container" fa-pipe-to="conversations.scrollViewEventHandler">
                                <div class="pe-hairlined-bottom-border pe-scrollview-offset-item pe-chat-item">
                                    <div class="pe-left">
                                        <img ng-src="{{::item.imageUrl}}" class="pe-circle pe-user-thumbnail" style="width:45px;height:45px;">
                                    </div>
                                    <div class="pe-center">
                                        <div class="pe-chat-item-username">
                                        {{::item.username}}
                                        </div>
                                        <div class="pe-chat-item-fullname">
                                        {{::item.fullname}}:
                                        </div>
                                        <div class="pe-chat-item-msg-tagline">
                                        {{::item.msg}}
                                        </div>
                                        <div class="pe-chat-item-time">
                                            {{::item.time}}
                                        </div>

                                    </div>
                                    <div class="pe-right pe-list-accessory">
                                        <i class="icon ion-chevron-right"></i>
                                    </div>
                                </div>
                            </fa-surface>

                            <!--<fa-header-footer-layout fa-options="{headerSize : 90, footerSize:20, direction : 0}">-->
                                    <!--<fa-modifier fa-size="[45,45]"  fa-align="[0,0.5]" fa-origin="[0,0.5]" fa-translate="[25,0,0]">-->
                                        <!--<fa-image-surface fa-pipe-to="conversations.scrollViewEventHandler" fa-image-url="{{::item.imageUrl}}" class="pe-circle"></fa-image-surface>-->
                                    <!--</fa-modifier>-->

                                    <!--<fa-modifier fa-size="[undefined,55]" fa-align="[0,0.5]" fa-origin="[0,0.5]">-->
                                        <!--<fa-surface fa-pipe-to="conversations.scrollViewEventHandler">-->
                                            <!--<div class="pe-chat-item-username">-->
                                                <!--{{::item.username}}-->
                                            <!--</div>-->
                                            <!--<div class="pe-chat-item-fullname">-->
                                                <!--{{::item.fullname}}:-->
                                            <!--</div>-->
                                            <!--<div class="pe-chat-item-msg-tagline">-->
                                                <!--{{::item.msg}}-->
                                            <!--</div>-->
                                        <!--</fa-surface>-->
                                        <!--<fa-modifier fa-size="[50, 20]" fa-align="[1,0.5]" fa-origin="[1,0.5]">-->
                                            <!--<fa-surface fa-pipe-to="conversations.scrollViewEventHandler" class="pe-chat-item-time">-->
                                                <!--{{::item.time}}-->
                                            <!--</fa-surface>-->
                                        <!--</fa-modifier>-->
                                    <!--</fa-modifier>-->

                                    <!--<fa-modifier fa-size="[undefined, 20]" fa-align="[0,0.5]" fa-origin="[0,0.5]">-->
                                        <!--<fa-surface>-->
                                            <!--<div class="pe-list-accessory">-->
                                                <!--<i class="icon ion-chevron-right"></i>-->
                                            <!--</div>-->
                                        <!--</fa-surface>-->
                                    <!--</fa-modifier>-->

                                <!--</fa-header-footer-layout>-->
                        </fa-modifier>
                    </fa-view>
                </fa-scroll-view>
            <!--</fa-container-surface>-->
        </fa-modifier>

        <!-- FOOTER -->
        <fa-modifier>

            <fa-container-surface fa-options="{classes : ['pe-tabbar','pe-hairlined-top-border']}">
                <fa-grid-layout fa-options="{dimensions : [3,1]}">
                    <fa-modifier>
                        <fa-surface class="pe-tabbar-button">
                            <div class="pe-tabbar-icon-container">
                                <i class="icon ion-ios-search-strong"></i>
                            </div>
                            <div class="pe-tabbar-title">
                                Search
                            </div>
                        </fa-surface>
                    </fa-modifier>
                    <fa-modifier>
                        <fa-surface  class="pe-tabbar-button selected">
                            <div class="pe-tabbar-icon-container">
                                <i class="icon ion-ios-contact"></i>
                            </div>
                            <div class="pe-tabbar-title">
                                Chats
                            </div>
                        </fa-surface>
                    </fa-modifier>
                    <fa-modifier>
                        <fa-surface  class="pe-tabbar-button">
                            <div class="pe-tabbar-icon-container">
                                <i class="icon ion-ios-gear"></i>
                            </div>
                            <div class="pe-tabbar-title">
                                Settings
                            </div>
                        </fa-surface>
                    </fa-modifier>
                </fa-grid-layout>

            </fa-container-surface>
        </fa-modifier>
    </fa-header-footer-layout>
</pele-screen>
