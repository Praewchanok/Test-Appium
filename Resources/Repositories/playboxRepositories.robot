*** Settings ***
Resource        ../Localized/${LANG}/playboxLocalized.robot

*** Variable ***
${lbl_manu_home}                        xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${home}"]
${lbl_manu_live_tv}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${live_tv}"]
${lbl_manu_live_sports}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${live_sports}"]
${lbl_manu_football}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${football}"]
${lbl_manu_tv_channels}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${tv_channels}"]
${lbl_manu_movies}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${movies}"]
${lbl_manu_series}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${series}"]
${lbl_manu_varieties}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${varieties}"]
${lbl_manu_concert_or_mv}               xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${concert_or_mv}"]
${lbl_manu_kids}                        xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${kids}"]
${lbl_manu_anime}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${anime}"]
${lbl_manu_sports}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${sports}"]
${lbl_manu_play_news}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${play_news}"]
${lbl_manu_ais_360_channel}             xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${ais_360_channel}"]
${lbl_manu_netflix}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${netflix}"]
${lbl_manu_disney_plus_hotstar}         xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${disney_plus_hotstar}"]
${lbl_manu_we_tv}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${we_tv}"]
${lbl_manu_viu}                         xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${viu}"]
${lbl_manu_ais_karaoke}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${ais_karaoke}"]
${lbl_manu_partner}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${partner}"]
${lbl_manu_browser}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${browser}"]
${lbl_manu_inbox}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${inbox}"]
${lbl_manu_settings}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${settings}"]

${lbl_title_preferences}                xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${preferences}"]
${lbl_manu_my_profile}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${my_profile}"]
${lbl_manu_recent}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${recent}"]
${lbl_manu_favorites}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${favorites}"]
${lbl_manu_preferences}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${preferences}"]
${lbl_title_device}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${device}"]
${lbl_manu_my_apps}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${my_apps}"]
${lbl_manu_network}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${network}"]
${lbl_manu_information}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${information}"]
${lbl_manu_software_upgrade}            xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${software_upgrade}"]
${lbl_manu_common}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${common}"]
${lbl_manu_advanced}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${advanced}"]
${lbl_manu_app_installer}               xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${app_installer}"]

${lbl_topic}                            id=com.ais.playbox.prod:id/decor_title
${lbl_ui_language}                      xpath=//*[@resource-id="android:id/title"][@text="${ui_language}"]
${lbl_ui_language_en_or_th}             xpath=//*[@resource-id="android:id/summary"][@text="${ui_language_en_or_th}"]
${lbl_ui_timeout}                       xpath=//*[@resource-id="android:id/title"][@text="${ui_timeout}"]
${lbl_ui_timeout_never}                 xpath=//*[@resource-id="android:id/summary"][@text="${ui_timeout_never}"]
${lbl_player_ui_timeout}                xpath=//*[@resource-id="android:id/title"][@text="${player_ui_timeout}"]
${lbl_player_ui_timeout_never}          xpath=//*[@resource-id="android:id/summary"][@text="${player_ui_timeout_never}"]
${lbl_preferred_audio_language}         xpath=//*[@resource-id="android:id/title"][@text="${preferred_audio_language}"]
${lbl_audio_language_en_or_th}          xpath=//*[@resource-id="android:id/summary"][@text="${audio_language_en_or_th}"]
${lbl_rewind_or_forward_interval}       xpath=//*[@resource-id="android:id/title"][@text="${rewind_or_forward_interval}"]
${lbl_rewind_or_forward_time}           xpath=//*[@resource-id="android:id/summary"][@text="${rewind_or_forward_time}"]
${lbl_push_notifications}               xpath=//*[@resource-id="android:id/title"][@text="${push_notifications}"]


${lbl_ui_language_en}                   xpath=//*[@resource-id="android:id/title"][@text="${ui_language_en}"]
${lbl_ui_language_th}                   xpath=//*[@resource-id="android:id/title"][@text="${ui_language_th}"]
# ${lbl_timeout_5s}                       xpath=//*[@resource-id="android:id/title"][@text="${timeout_5s}"]
# ${lbl_timeout_10s}                      xpath=//*[@resource-id="android:id/title"][@text="${timeout_10s}"]
# ${lbl_timeout_15s}                      xpath=//*[@resource-id="android:id/title"][@text="${timeout_15s}"]
# ${lbl_timeout_20s}                      xpath=//*[@resource-id="android:id/title"][@text="${timeout_20s}"]
# ${lbl_timeout_25s}                      xpath=//*[@resource-id="android:id/title"][@text="${timeout_25s}"]
# ${lbl_timeout_30s}                      xpath=//*[@resource-id="android:id/title"][@text="${timeout_30s}"]
# ${lbl_timeout_1m}                       xpath=//*[@resource-id="android:id/title"][@text="${timeout_1m}"]
# ${lbl_timeout_2m}                       xpath=//*[@resource-id="android:id/title"][@text="${timeout_2m}"]
# ${lbl_timeout_5m}                       xpath=//*[@resource-id="android:id/title"][@text="${timeout_5m}"]
${lbl_timeout_never}                    xpath=//*[@resource-id="android:id/title"][@text="${timeout_never}"]

${btn_ui_language_en}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/container"][@index="0"]
${btn_ui_language_th}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/container"][@index="1"]
${btn_timeout_never}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/container"][@index="5"]

${lbl_navigation_menu}                  id=com.ais.playbox.prod:id/browse_headers
${icn_search}                           id=com.ais.playbox.prod:id/icon
${lbl_clock}                            id=com.ais.playbox.prod:id/title_clock
${pic_network}                          id=com.ais.playbox.prod:id/title_network_state

${chk_ui_language_en}                   xpath=(//*[@resource-id="com.ais.playbox.prod:id/button"])[1]
${chk_ui_language_th}                   xpath=(//*[@resource-id="com.ais.playbox.prod:id/button"])[2]
${chk_timeout_never}                    xpath=(//*[@resource-id="com.ais.playbox.prod:id/button"])[6]
${chk_push_notifications}               id=android:id/checkbox

${pic_manu_preferences}
${pic_banner_one}                       xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_banner_image"])[1]
${pic_banner_two}                       xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_banner_image"])[2]
${pic_banner_three}                     xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_banner_image"])[3]
# ${pic_banner_four}                      xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_banner_image"])[4]
# ${pic_banner_five}                      xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_banner_image"])[5]
${pic_netflix}                          xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_app_icon"])[1]
${pic_disney_plus_hotstar}              xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_app_icon"])[2]
${pic_we_tv}                            xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_app_icon"])[3]
# ${pic_viu}                              xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_app_icon"])[4]
# ${pic_ais_karaoke}                      xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_app_icon"])[5]
${pic_triage}                           xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])[1]
${pic_nha_harn_the_series}              xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])[2]
${pic_bad_beauty}                       xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])[3]
# ${pic_saneha_stories_4}                 xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])[4]
# ${pic_take_guy_out_thailand_season5}    xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])[5]


# ${lbl_triage}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"][@text="${triage}"]
# ${lbl_nha_harn_the_series}              xpath=//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"][@text="${nha_harn_the_series}"]
# ${lbl_bad_beauty}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"][@text="${bad_beauty}"]
# ${lbl_saneha_stories_4}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"][@text="${saneha_stories_4}"]
# ${lbl_take_guy_out_thailand_season5}    xpath=//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"][@text="${take_guy_out_thailand_season5}"]
