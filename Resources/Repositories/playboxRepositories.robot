*** Settings ***
Resource        ../Localized/${LANG}/playboxLocalized.robot

*** Variable ***
${icn_search}                           id=com.ais.playbox.prod:id/icon
${txt_search}                           id=com.ais.playbox.prod:id/lb_search_text_editor
${pic_keyboard}                         id=com.ais.playbox.prod:id/lb_results_frame
# ${lbl_navigation_menu}                  id=com.ais.playbox.prod:id/browse_headers
${lbl_left_panel}                       id=com.ais.playbox.prod:id/browse_headers
# ${lbl_right_panel}                      id=idcom.ais.playbox.prod:id/container_list
${btn_highlighting}                     xpath=//*[@class="android.widget.LinearLayout"][@focused="true"]

${lbl_menu_home}                        xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${home}"]
${lbl_menu_live_tv}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${live_tv}"]
${lbl_menu_live_sports}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${live_sports}"]
${lbl_menu_football}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${football}"]
${lbl_menu_tv_channels}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${tv_channels}"]
${lbl_menu_movies}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${movies}"]
${lbl_menu_series}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${series}"]
${lbl_menu_varieties}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${varieties}"]
${lbl_menu_concert_or_mv}               xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${concert_or_mv}"]
${lbl_menu_kids}                        xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${kids}"]
${lbl_menu_anime}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${anime}"]
${lbl_menu_sports}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${sports}"]
${lbl_menu_play_news}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${play_news}"]
${lbl_menu_360_channel}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${ais_360_channel}"]
${lbl_menu_netflix}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${netflix}"]
${lbl_menu_disney}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${disney_plus_hotstar}"]
${lbl_menu_we_tv}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${we_tv}"]
${lbl_menu_viu}                         xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${viu}"]
${lbl_menu_karaoke}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${ais_karaoke}"]
${lbl_menu_partner}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${partner}"]
${lbl_menu_browser}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${browser}"]
${lbl_menu_inbox}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${inbox}"]
${lbl_menu_settings}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="SETTINGS" or @text="ตั้งค่า"]
${lbl_menu_preferences}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="Preferences" or @text="การตั้งค่า"]

${lbl_topic}                            id=com.ais.playbox.prod:id/decor_title
${lbl_ui_language}                      xpath=//*[@resource-id="android:id/title"][@text="UI Language" or @text="ภาษาที่ใช้งาน"]
${lbl_ui_language_en}                   xpath=//*[@resource-id="android:id/title"][@text="${ui_language_en}"]
${lbl_ui_language_th}                   xpath=//*[@resource-id="android:id/title"][@text="${ui_language_th}"]
${lbl_ui_language_selected}             xpath=//*[@resource-id="android:id/summary"][@text="English" or @text="ไทย"]
${lbl_ui_timeout}                       xpath=//*[@resource-id="android:id/title"][@text="${ui_timeout}"]
${lbl_ui_timeout_never}                 xpath=//*[@resource-id="android:id/summary"][@text="${timeout_never}"]
${lbl_player_ui_timeout}                xpath=//*[@resource-id="android:id/title"][@text="${player_ui_timeout}"]
${lbl_player_ui_timeout_never}          xpath=//*[@resource-id="android:id/summary"][@text="${timeout_never}"]
${lbl_timeout_never}                    xpath=//*[@resource-id="android:id/title"][@text="${timeout_never}"]

${pic_banner_one}                       xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_banner_image"])[1]
${pic_banner_two}                       xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_banner_image"])[2]
${pic_banner_three}                     xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_banner_image"])[3]
${pic_netflix}                          xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_app_icon"])[1]
${pic_disney}                           xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_app_icon"])[2]
${pic_we_tv}                            xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_app_icon"])[3]
${pic_viu}                              xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_app_icon"])[4]
${pic_triage}                           xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])[1]
${pic_nha_harn_the_series}              xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])[2]
${pic_bad_beauty}                       xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])[3]

${lbl_channel_number}                   xpath=(//*[@resource-id="com.ais.playbox.prod:id/channel_number"])[8]
${pic_channel_logo}                     xpath=(//*[@resource-id="com.ais.playbox.prod:id/channel_image"])[8]
${lbl_now_on}                           xpath=(//*[@resource-id="com.ais.playbox.prod:id/channel_title"])[1]
${lbl_next}                             xpath=(//*[@resource-id="com.ais.playbox.prod:id/channel_title"])[2]
${lbl_duration}                         id=com.ais.playbox.prod:id/channel_epg_time
${lbl_tv_program}                       xpath=(//*[@resource-id="com.ais.playbox.prod:id/channel_epg_title"])[1]
${lbl_next_tv_program}                  xpath=(//*[@resource-id="com.ais.playbox.prod:id/channel_epg_title"])[2]

${lbl_add_to_favorites}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${add_to_favorites}"]
${lbl_program_guide}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${program_guide}"]
${lbl_quality}                          xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${quality}"]
${lbl_audio}                            xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${audio}"]
${lbl_all}                              xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${all}"]
${lbl_favorites}                        xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${favorites}"]
${lbl_digital_tv}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${digital_tv}"]
${lbl_movies_or_series}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${movies_or_series}"]
${lbl_variety_or_entertainment}         xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${variety_or_entertainment}"]
${lbl_sports}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${sports}"]
${lbl_kids_or_family}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${kids_or_family}"]
${lbl_documentaries}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${documentaries}"]
${lbl_news_or_business}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${news_or_business}"]
${lbl_education_or_religion}            xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${education_or_religion}"]
${lbl_shopping}                         xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${shopping}"]

# ${lbl_poster_movies}                    id=com.ais.playbox.prod:id/scale_frame
${lbl_menu_promotions}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${promotions}"]
${lbl_menu_top_10}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${top_10_movies}"]
${lbl_menu_action}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${action_movies}"]
${lbl_menu_comedy}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${comedy_movies}"]
${lbl_menu_drama}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${drama_movies}"]
${lbl_menu_romance}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${romance_movies}"]
${lbl_menu_thriller_and_horror}         xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${thriller_and_horror_movies}"]
${lbl_menu_animation}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${animation_movies}"]
${lbl_menu_action_thai}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${action_thai_movies}"]
${lbl_menu_drama_thai}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${drama_thai_movies}"]
${lbl_menu_comedy_thai}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${comedy_thai_movies}"]
${lbl_menu_horror_thai}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${horror_thai_movies}"]
${lbl_menu_western}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${western_movies}"]
${lbl_menu_chinese}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${chinese_movies}"]
# ${lbl_promotions}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${promotions}"]
# ${lbl_top_10}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${top_10_movies}"]
# ${lbl_action}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${action_movies}"]
# ${lbl_comedy}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${comedy_movies}"]
# ${lbl_drama}                            xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${drama_movies}"]
${lbl_romance}                          xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${romance_movies}"]
# ${lbl_thriller_and_horror}              xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${thriller_and_horror_movies}"]
# ${lbl_animation}                        xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${animation_movies}"]
# ${lbl_action_thai}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${action_thai_movies}"]
# ${lbl_drama_thai}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${drama_thai_movies}"]
${lbl_comedy_thai}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${comedy_thai_movies}"]
# ${lbl_horror_thai}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${horror_thai_movies}"]
${lbl_western}                          xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${western_movies}"]
# ${lbl_chinese}                          xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${chinese_movies}"]
# ${pic_poster_top_10}                    accessibility_id=Top 10 Movies
# ${pic_poster_action}                    accessibility_id=Action Movies
# ${pic_poster_comedy}                    accessibility_id=Comedy Movies                           
# ${pic_poster_drama}                     accessibility_id=Drama Movies       
${pic_poster_romance}                   accessibility_id=Romance Movies       
# ${pic_poster_thriller_and_horror}       accessibility_id=Thriller & Horror Movies       
# ${pic_poster_animation}                 accessibility_id=Animation Movies       
# ${pic_poster_action_thai}               accessibility_id=Action Thai Movies       
${pic_poster_drama_thai}                accessibility_id=Drama Thai Movies       
# ${pic_poster_comedy_thai}               accessibility_id=Comedy Thai Movies       
# ${pic_poster_horror_thai}               accessibility_id=Horror Thai Movies       
${pic_poster_western}                   accessibility_id=Western Movies       
# ${pic_poster_chinese}                   accessibility_id=Chinese Movies
${pic_poster_movies}                    xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])[1]     # 1-8
${pic_name_movies}                      xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"])[1]     # 10-17
${pic_views_count}                      xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_views_count"])[1]   # 9-16

${lbl_result_live}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${result_live}"]
${lbl_result_movies}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${result_movies}"]
${lbl_result_series}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${result_series}"]
${lbl_result_episodes}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${result_episodes}"]
${pic_result_live}                      xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_channel_image"])[1]
${pic_result_movies}                    xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])[1]
${pic_result_series}                    xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])[3]
${pic_result_episodes}                  xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_episode_image"])[1]
${lbl_result_live_title}                xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_channel_title"])[1]
${lbl_result_movies_title}              xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"])[1]
${lbl_result_series}                    xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"])[3]
${lbl_result_episodes}                  xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_episode_title"])[1]
${lbl_nothing}                          id=com.ais.playbox.prod:id/nothing_was_found_title
# ${row_content}    accessibility_id=Episodes