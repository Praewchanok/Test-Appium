*** Settings ***
Resource        ../Localized/${LANG}/playboxLocalized.robot

*** Variable ***
${icn_search}                           id=com.ais.playbox.prod:id/icon
${txt_search}                           id=com.ais.playbox.prod:id/lb_search_text_editor
${pic_keyboard}                         id=com.ais.playbox.prod:id/lb_results_frame
${lbl_left_panel}                       id=com.ais.playbox.prod:id/browse_headers
${lbl_right_panel}                      id=com.ais.playbox.prod:id/container_list
# Menu On Home Page
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
# Settings Menu
# ${lvw_title_preferences}                accessibility_id=Preferences
${lbl_title_preferences}                xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${title_preferences}"]
${lbl_menu_my_profile}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${my_profile}"]
${lbl_menu_recent}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${recent}"]
${lbl_menu_favorites}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${favorites}"]
${lbl_menu_preferences}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="Preferences" or @text="การตั้งค่า"]
# ${lvw_title_device}                     accessibility_id=Device
${lbl_title_device}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${title_device}"]
${lbl_menu_my_apps}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${my_apps}"]
${lbl_menu_network}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${network}"]
${lbl_menu_information}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${information}"]
${lbl_menu_software}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${software}"]
${lbl_menu_common}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${common}"]
${lbl_menu_advanced}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${advanced}"]
${lbl_menu_app_installer}               xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="${app_installer}"]
# Settings Menu > Preferences Menu
${lbl_title}                            id=com.ais.playbox.prod:id/decor_title
${lbl_ui_language}                      xpath=//*[@resource-id="android:id/title"][@text="UI Language" or @text="ภาษาที่ใช้งาน"]
${lbl_ui_language_en}                   xpath=//*[@resource-id="android:id/title"][@text="${ui_language_en}"]
${lbl_ui_language_th}                   xpath=//*[@resource-id="android:id/title"][@text="${ui_language_th}"]
${lbl_ui_language_selected}             xpath=//*[@resource-id="android:id/summary"][@text="English" or @text="ไทย"]
${lbl_ui_timeout}                       xpath=//*[@resource-id="android:id/title"][@text="${ui_timeout}"]
${lbl_ui_timeout_never}                 xpath=//*[@resource-id="android:id/summary"][@text="${timeout_never}"]
${lbl_player_ui_timeout}                xpath=//*[@resource-id="android:id/title"][@text="${player_ui_timeout}"]
${lbl_player_ui_timeout_never}          xpath=//*[@resource-id="android:id/summary"][@text="${timeout_never}"]
${lbl_timeout_never}                    xpath=//*[@resource-id="android:id/title"][@text="${timeout_never}"]
# Settings Menu > Favorites Menu
${lbl_favorites_live}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${favorites_live}"]
${lbl_favorites_movies}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${favorites_movies}"]
${lbl_favorites_serie}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${favorites_serie}"]
    # xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text=""]
    # xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text=""]
    # xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text=""]
    # xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_channel_image"])
    # xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_channel_title"])
    # xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])
    # xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"])
    # xpath=//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"][@text="Doraemon the Movie : Nobita's New Dinosaur"]
    # xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_episode_image"])
    # xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_episode_title"])
    # id=com.ais.playbox.prod:id/card_episode_image
    # id=com.ais.playbox.prod:id/card_episode_title


${pic_banner}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/card_banner_image"]
# @{pic_banner}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/card_banner_image"]        
${pic_banner_one}                       xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_banner_image"])[1]
${pic_banner_two}                       xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_banner_image"])[2]
${pic_banner_three}                     xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_banner_image"])[3]
# Word Class Entertainment
${pic_netflix}                          xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_app_icon"])[1]
${pic_disney}                           xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_app_icon"])[2]
${pic_we_tv}                            xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_app_icon"])[3]
${pic_viu}                              xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_app_icon"])[4]
${pic_karaoke}                          xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_app_icon"])[5]
${lbl_disney_left_panel}	            id=in.startv.hotstar.dplus.tv:id/menu_container
${pic_disney_banner}                    id=in.startv.hotstar.dplus.tv:id/container
${icn_wetv}				                id=com.ktcp.osvideo:id/logo
${btn_wetv_login}			            xpath=(//*[@resource-id="com.ktcp.osvideo:id/tv_status_bar"]//android.view.View[@resource-id="com.ktcp.osvideo:id/view"])[1]
${btn_wetv_search}		                xpath=(//*[@resource-id="com.ktcp.osvideo:id/tv_status_bar"]//android.view.View[@resource-id="com.ktcp.osvideo:id/view"])[2]
${btn_wetv_qrcode_quit}		            id=com.ktcp.osvideo:id/positiveButton 	# back to ais playbox
${icn_viu}				                id=com.viu.tv:id/iv_logo
${btn_viu_select_lang}		            id=com.viu.tv:id/tv_select_language
${lbl_viu_welcome}		                id=com.viu.tv:id/tv_welcome_title
${lbl_viu_subtitle}		                id=com.viu.tv:id/tv_welcome_subtitle
${btn_viu_connect_ais}		            id=com.viu.tv:id/tv_Ais
${btn_viu_connect_qrcode}	            id=com.viu.tv:id/tv_qr
${btn_viu_connect_pin}		            id=com.viu.tv:id/tv_pin
${lbl_viu_rule}			                id=com.viu.tv:id/tvRuleAndDetail
${lbl_viu_teams}			            id=com.viu.tv:id/tv_rule
${lbl_viu_personal}		                id=com.viu.tv:id/rl_privacy
${lbl_karaoke_error}		            id=com.wisdomvast.aiskaraoke:id/tvErrorTitle	# อุ๊ปส์!
${lbl_karaoke_error_decs}	            id=com.wisdomvast.aiskaraoke:id/tvErrorDesc	# ข้อมูลผู้ใช้งานไม่ถูกต้อง
${lbl_karaoke_ok}			            id=com.wisdomvast.aiskaraoke:id/btnAction		# ตกลง
${lbl_karaoke_quit}		                xpath=//*[@class="android.widget.TextView"][@text="ต้องการออกจากแอปหรือไม่"]
# ${btn_karaoke_cancle}		            id=com.wisdomvast.aiskaraoke:id/btnCancel
${btn_karaoke_quit}		                id=com.wisdomvast.aiskaraoke:id/btnQuit

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
${lbl_movies_promotions}                xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${promotions}"]
${lbl_movies_top_10}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${top_10_movies}"]
${lbl_movies_action}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${action_movies}"]
${lbl_movies_comedy}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${comedy_movies}"]
${lbl_movies_drama}                     xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${drama_movies}"]
${lbl_movies_romance}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${romance_movies}"]
${lbl_movies_horror}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${horror_movies}"]
${lbl_movies_animation}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${animation_movies}"]
${lbl_movies_action_thai}               xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${action_thai_movies}"]
${lbl_movies_drama_thai}                xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${drama_thai_movies}"]
${lbl_movies_comedy_thai}               xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${comedy_thai_movies}"]
${lbl_movies_horror_thai}               xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${horror_thai_movies}"]
${lbl_movies_western}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${western_movies}"]
${lbl_movies_chinese}                   xpath=//*[@resource-id="com.ais.playbox.prod:id/item_content_header_title"][@text="${chinese_movies}"]
# ${lbl_promotions}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${promotions}"]
# ${lbl_top_10}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${top_10_movies}"]
# ${lbl_action}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${action_movies}"]
# ${lbl_comedy}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${comedy_movies}"]
# ${lbl_drama}                            xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${drama_movies}"]
${lbl_romance}                          xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${romance_movies}"]
# ${lbl_horror}                           xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${horror_movies}"]
# ${lbl_animation}                        xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${animation_movies}"]
# ${lbl_action_thai}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${action_thai_movies}"]
# ${lbl_drama_thai}                       xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${drama_thai_movies}"]
# ${lbl_comedy_thai}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${comedy_thai_movies}"]
# ${lbl_horror_thai}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${horror_thai_movies}"]
# ${lbl_western}                          xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${western_movies}"]
${lbl_chinese}                          xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${chinese_movies}"]
# ${pic_poster_top_10}                    accessibility_id=Top 10 Movies
# ${pic_poster_action}                    accessibility_id=Action Movies
# ${pic_poster_comedy}                    accessibility_id=Comedy Movies                           
# ${pic_poster_drama}                     accessibility_id=Drama Movies       
${pic_poster_romance}                   accessibility_id=Romance Movies       
# ${pic_poster_horror}                    accessibility_id=Thriller & Horror Movies       
# ${pic_poster_animation}                 accessibility_id=Animation Movies       
# ${pic_poster_action_thai}               accessibility_id=Action Thai Movies       
# ${pic_poster_drama_thai}                accessibility_id=Drama Thai Movies       
# ${pic_poster_comedy_thai}               accessibility_id=Comedy Thai Movies       
# ${pic_poster_horror_thai}               accessibility_id=Horror Thai Movies       
# ${pic_poster_western}                   accessibility_id=Western Movies       
${pic_poster_chinese}                   accessibility_id=Chinese Movies
# Live TV Menu
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
# Content On Home Page
${lbl_home_content}                     xpath=(//*[@resource-id="com.ais.playbox.prod:id/row_header"])[1]
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
${lbl_home_live_programs}               xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_live_programs}"]
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
${lbl_home_horror}                      xpath=//*[@resource-id="com.ais.playbox.prod:id/row_header"][@text="${home_horror}"]
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
# ${pic_channels}                         xpath=//*[@resource-id="com.ais.playbox.prod:id/card_channel_image"]    # 1-5 and 6-10
# ${lbl_channels}                         xpath=//*[@resource-id="com.ais.playbox.prod:id/card_channel_title"]    # 1-5 and 6-10
${pic_ais_promotion}                    id=com.ais.playbox.prod:id/card_movie_image
${lbl_ais_promotion}                    id=com.ais.playbox.prod:id/card_movie_title
# AIS 360 Channle Menu
${lbl_page_ais_360}                     id=com.ais.playbox.prod:id/item_content_header_title
${pic_list_ais_360}                     accessibility_id=AIS 360 CHANNEL

${pic_title_poster_one}                 xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_image"])[1]
${lbl_title_poster_one}                 xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"])[1]
${lbl_title_poster_two}                 xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"])[2]
${lbl_title_poster_three}               xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"])[3]
${lbl_title_poster_four}                xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"])[4]
${lbl_title_poster_five}                xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"])[5]
${lbl_title_shin_chan}                  xpath=//*[@resource-id="com.ais.playbox.prod:id/card_movie_title"][@text="${shin_chan}"]       
${lbl_title_mv_one}                     xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_episode_title"])[1]
${lbl_title_mv_two}                     xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_episode_title"])[2]
${lbl_title_mv_three}                   xpath=(//*[@resource-id="com.ais.playbox.prod:id/card_episode_title"])[3]

${icn_lock}                             id=com.ais.playbox.prod:id/card_movie_icon_lock
${pic_poster}                           id=com.ais.playbox.prod:id/details_overview_image
${btn_play}                             xpath=//*[@resource-id="com.ais.playbox.prod:id/lb_action_button"][@text="${play}"]
${btn_add_favorites}                    xpath=//*[@resource-id="com.ais.playbox.prod:id/lb_action_button"][@text="${add_favorites}"]
${btn_remove_favorites}                 xpath=//*[@resource-id="com.ais.playbox.prod:id/lb_action_button"][@text="${remove_favorites}"]
${lbl_detail_title}                     id=com.ais.playbox.prod:id/detail_view_title
${lbl_detail_description}               id=com.ais.playbox.prod:id/detail_view_description
${lbl_related_titles}                   id=com.ais.playbox.prod:id/row_header
${lbl_continue_play}                    id=android:id/message
${btn_no}                               id=android:id/button2
${btn_yes}                              id=android:id/button2
# ${lvw_poster_related_titles}            accessibility_id=RELATED TITLES

    # accessibility_id=${home_world_class}
    # accessibility_id=${home_recommended}
    # accessibility_id=${home_live_sports}
    # accessibility_id=${home_new_releases}
    # accessibility_id=${home_top_10}
    # accessibility_id=${home_aisplay}
    # accessibility_id=${home_12345}
    # accessibility_id=${home_power_of_us}
    # accessibility_id=${home_tero}
    # accessibility_id=${home_gmm_grammy}
    # accessibility_id=${home_wake_music}
    # accessibility_id=${home_rerun_football}
    # accessibility_id=${home_take_me_out}
    # accessibility_id=${home_tv_series}
    # accessibility_id=${home_conan}
    # accessibility_id=${home_anime}
    # accessibility_id=${home_popular_tv}
    # accessibility_id=${home_premium_tv}
    # accessibility_id=${home_premium}
    # accessibility_id=${home_premium_rerun}
    # accessibility_id=${home_playnews}
    # accessibility_id=${home_thai_series}
    # accessibility_id=${home_you_may_like}
    # accessibility_id=${home_thai_movies}
    # accessibility_id=${home_action}
    # accessibility_id=${home_chinese}
    # accessibility_id=${home_idol}
    # accessibility_id=${home_animation}
    # accessibility_id=${home_cartoons}
    # accessibility_id=${home_comedy}
    # accessibility_id=${home_drama}
    # accessibility_id=${home_romance}
    # accessibility_id=${home_horror}
    # accessibility_id=${home_concerts}
    # accessibility_id=${home_sports}