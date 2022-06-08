*** Settings ***
Resource        ../Localized/${LANG}/playboxLocalized.robot

*** Variable ***
${icn_search}                           id=com.ais.playbox.prod:id/icon
${txt_search}                           id=com.ais.playbox.prod:id/lb_search_text_editor
${pic_keyboard}                         id=com.ais.playbox.prod:id/lb_results_frame
# ${lbl_navigation_menu}                  id=com.ais.playbox.prod:id/browse_headers
${lbl_left_panel}                       id=com.ais.playbox.prod:id/browse_headers
${lbl_right_panel}                      id=com.ais.playbox.prod:id/container_list
# Home Menu
${lbl_menu_home}                        xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${home}"]
${lbl_menu_live_tv}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${live_tv}"]
${lbl_menu_live_sports}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${live_sports}"]
${lbl_menu_football}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${football}"]
${lbl_menu_tv_channels}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${tv_channels}"]
${lbl_menu_movies}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${movies}"]
${lbl_menu_series}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${series}"]
${lbl_menu_varieties}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${varieties}"]
${lbl_menu_concert_mv}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="${concert_or_mv}"]
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

${pic_banner}                           xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_banner_image"])
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
# Live TV Menu
${lbl_channel_number}                   xpath=(//*[@resource-id="com.ais.playbox.prod:id/channel_number"])[8]
${pic_channel_logo}                     xpath=(//*[@resource-id="com.ais.playbox.prod:id/channel_image"])[8]
${lbl_now_on}                           xpath=(//*[@resource-id="com.ais.playbox.prod:id/channel_title"])[1]
${lbl_next}                             xpath=(//*[@resource-id="com.ais.playbox.prod:id/channel_title"])[2]
${lbl_duration}                         id=com.ais.playbox.prod:id/channel_epg_time
${lbl_tv_program}                       xpath=(//*[@resource-id="com.ais.playbox.prod:id/channel_epg_title"])[1]
${lbl_next_tv_program}                  xpath=(//*[@resource-id="com.ais.playbox.prod:id/channel_epg_title"])[2]
${lbl_add_favorites}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${add_to_favorites}"]
${lbl_program_guide}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${program_guide}"]
${lbl_quality}                          xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${quality}"]
${lbl_audio}                            xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${audio}"]
${lbl_all}                              xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${all}"]
${lbl_favorites}                        xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${favorites}"]
${lbl_digital_tv}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${digital_tv}"]
${lbl_movies_series}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${movies_or_series}"]
${lbl_variety}                          xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${variety_or_entertainment}"]
${lbl_sports}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${sports}"]
${lbl_kids_family}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${kids_or_family}"]
${lbl_documentaries}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${documentaries}"]
${lbl_news_business}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${news_or_business}"]
${lbl_education}                        xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${education_or_religion}"]
${lbl_shopping}                         xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_live_genre_name"][@text="${shopping}"]
# Movies Menu
${lbl_movies_promotions}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${promotions}"]
${lbl_movies_top_10}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${top_10_movies}"]
${lbl_movies_action}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${action_movies}"]
${lbl_movies_comedy}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${comedy_movies}"]
${lbl_movies_drama}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${drama_movies}"]
${lbl_movies_romance}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${romance_movies}"]
${lbl_movies_horror}         xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${thriller_and_horror_movies}"]
${lbl_movies_animation}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${animation_movies}"]
${lbl_movies_action_thai}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${action_thai_movies}"]
${lbl_movies_drama_thai}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${drama_thai_movies}"]
${lbl_movies_comedy_thai}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${comedy_thai_movies}"]
${lbl_movies_horror_thai}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${horror_thai_movies}"]
${lbl_movies_western}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${western_movies}"]
${lbl_movies_chinese}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${chinese_movies}"]
# ${lbl_promotions}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${promotions}"]
# ${lbl_top_10}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${top_10_movies}"]
# ${lbl_action}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${action_movies}"]
# ${lbl_comedy}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${comedy_movies}"]
# ${lbl_drama}                            xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${drama_movies}"]
${lbl_romance}                          xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${romance_movies}"]
# ${lbl_horror}              xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${thriller_and_horror_movies}"]
# ${lbl_animation}                        xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${animation_movies}"]
# ${lbl_action_thai}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${action_thai_movies}"]
# ${lbl_drama_thai}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${drama_thai_movies}"]
# ${lbl_comedy_thai}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${comedy_thai_movies}"]
${lbl_horror_thai}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${horror_thai_movies}"]
# ${lbl_western}                          xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${western_movies}"]
# ${lbl_chinese}                          xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${chinese_movies}"]
# ${pic_poster_top_10}                    accessibility_id=Top 10 Movies
# ${pic_poster_action}                    accessibility_id=Action Movies
# ${pic_poster_comedy}                    accessibility_id=Comedy Movies                           
# ${pic_poster_drama}                     accessibility_id=Drama Movies       
${pic_poster_romance}                   accessibility_id=Romance Movies       
# ${pic_poster_horror}       accessibility_id=Thriller & Horror Movies       
# ${pic_poster_animation}                 accessibility_id=Animation Movies       
# ${pic_poster_action_thai}               accessibility_id=Action Thai Movies       
# ${pic_poster_drama_thai}                accessibility_id=Drama Thai Movies       
# ${pic_poster_comedy_thai}               accessibility_id=Comedy Thai Movies       
${pic_poster_horror_thai}               accessibility_id=Horror Thai Movies       
# ${pic_poster_western}                   accessibility_id=Western Movies       
# ${pic_poster_chinese}                   accessibility_id=Chinese Movies
${lbl_result_live}                      accessibility_id=Live
${lbl_result_movies}                    accessibility_id=Movies
${lbl_result_series}                    accessibility_id=Series
${lbl_result_episodes}                  accessibility_id=Episodes
${pic_result_live}                      xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_channel_image"])[1]
${pic_result_movies}                    xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])[1]
${pic_result_series}                    xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])[3]
${pic_result_episodes}                  xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_episode_image"])[1]
${lbl_result_live_title}                xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_channel_title"])[1]
${lbl_result_movies_title}              xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"])[1]
${lbl_result_series}                    xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"])[3]
${lbl_result_episodes}                  xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_episode_title"])[1]
${lbl_nothing}                          id=com.ais.playbox.prod:id/nothing_was_found_title
# Home Page
${lbl_home_world_class}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_world_class}"]
${lbl_home_recommended}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_recommended}"]
${lbl_home_live_sports}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_live_sports}"]
${lbl_home_new_releases}                xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_new_releases}"]
${lbl_home_top_10}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_top_10}"]
${lbl_home_aisplay}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_aisplay}"]
${lbl_home_12345}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_12345}"]
${lbl_home_power_of_us}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_power_of_us}"]
${lbl_home_tero}                        xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_tero}"]
${lbl_home_gmm_grammy}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_gmm_grammy}"]
${lbl_home_wake_music}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_wake_music}"]
${lbl_home_rerun_football}              xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_rerun_football}"]
${lbl_home_take_me_out}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_take_me_out}"]
${lbl_home_tv_series}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_tv_series}"]
${lbl_home_conan}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_conan}"]
${lbl_home_anime}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_anime}"]
${lbl_home_popular_tv}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_popular_tv}"]
${lbl_home_premium_tv}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_premium_tv}"]
${lbl_home_premium}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_premium}"]
${lbl_home_premium_rerun}               xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_premium_rerun}"]
${lbl_home_playnews}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_playnews}"]
${lbl_home_thai_series}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_thai_series}"]
${lbl_home_you_may_like}                xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_you_may_like}"]
${lbl_home_thai_movies}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_thai_movies}"]
${lbl_home_action}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_action}"]
${lbl_home_chinese}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_chinese}"]
${lbl_home_idol}                        xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_idol}"]
${lbl_home_animation}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_animation}"]
${lbl_home_cartoons}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_cartoons}"]
${lbl_home_comedy}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_comedy}"]
${lbl_home_drama}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_drama}"]
${lbl_home_romance}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_romance}"]
${lbl_home_thriller_horror}             xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_thriller_horror}"]
${lbl_home_concerts}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_concerts}"]
${lbl_home_sports}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_sports}"]
# TV Channels Menu
${lbl_channels_popular_tv}              xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${channels_popular_tv}"]
${lbl_channels_digital_tv}              xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${channels_digital_tv}"]
${lbl_channels_premium_tv}              xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${channels_premium_tv}"]
${lbl_channels_movies}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${channels_movies}"]
${lbl_channels_varieties}               xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${channels_varieties}"]
${lbl_channels_sports}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${channels_sports}"]
${lbl_channels_kids_family}             xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${channels_kids_family}"]
${lbl_channels_documentaries}           xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${channels_documentaries}"]
${lbl_channels_news}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${channels_news}"]
${lbl_channels_education}               xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${channels_education}"]
${lbl_channels_shopping}                xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${channels_shopping}"]
${lbl_channels_all}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${channels_all_channels}"]
${lbl_channels_ais_promotion}           xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${channels_ais_promotion}"]
${pic_channels_popular_tv}              accessibility_id=Popular TV
${pic_channels_digital_tv}              accessibility_id=Digital TV
${pic_channels_premium_tv}              accessibility_id=Premium TV
${pic_channels_movies}                  accessibility_id=Movies | Series
${pic_channels_varieties}               accessibility_id=Varieties | Entertainment
${pic_channels_sports}                  accessibility_id=Sports
${pic_channels_kids_family}             accessibility_id=Kids | Family
${pic_channels_documentaries}           accessibility_id=Documentaries
${pic_channels_news}                    accessibility_id=News | Business
${pic_channels_education}               accessibility_id=Education | Religion
${pic_channels_shopping}                accessibility_id=Shopping
${pic_channels_all}                     accessibility_id=All Channels
${pic_channels_ais_promotion}           accessibility_id=AIS PROMOTION
${pic_channels}                         xpath=//*[@resource-id="com.ais.playbox.prod:id/card_channel_image"]    # 1-5 and 6-10
${lbl_channels}                         xpath=//*[@resource-id="com.ais.playbox.prod:id/card_channel_title"]    # 1-5 and 6-10
${pic_ais_promotion}                    id=com.ais.playbox.prod:id/card_movie_image
${lbl_ais_promotion}                    id=com.ais.playbox.prod:id/card_movie_title

${lbl_page_ais_360}                     id=com.ais.playbox.prod:id/item_content_header_title
${pic_list_ais_360}                     accessibility_id=AIS 360 CHANNEL
${pic_poster}                           xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])    # 1-3
${lbl_poster}                           xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"])    # 1-3

${pic_home_poster}                      xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_episode_image"])