*** Settings ***
Resource        ../Repositories/playboxRepositories.robot

*** Variable ***
${remote_url}           http://localhost:4723/wd/hub
${platformName}         Android
${platformVersion}      7.1.2
${deviceName}           192.168.1.33:6555
${automationName}       UiAutomator2
${appActivity}          net.vimmi.settopbox.ui.main.MainActivity
${appPackage}           com.ais.playbox.prod
${noReset}              true
${udid}                 192.168.1.33:6555

${appActivity_netflix}      com.netflix.ninja.MainActivity
${appPackage_netflix}       com.netflix.ninja
${appActivity_disney}       in.startv.hotstar.ui.splash.TVSplashActivity
${appPackage_disney}        in.startv.hotstar.dplus.tv
${appActivity_wetv}         com.ktcp.video.activity.HomeActivity
${appPackage_wetv}          com.ktcp.osvideo
${appActivity_viu}          com.viu.aisintegration.ui.activity.AisLoginActivity
${appPackage_viu}           com.viu.tv
${appActivity_}
${appPackage_}

${attr_content-desc}    content-desc
${attr_selected}        selected        # true or false
# ${attr_text}            text
# ${attr_focused}         focused
@{list_menu}    ${lbl_menu_home}        ${lbl_menu_live_tv}     ${lbl_menu_live_sports}     ${lbl_menu_football}        ${lbl_menu_tv_channels}
...             ${lbl_menu_movies}      ${lbl_menu_series}      ${lbl_menu_varieties}       ${lbl_menu_concert_mv}      ${lbl_menu_kids}
...             ${lbl_menu_anime}       ${lbl_menu_sports}      ${lbl_menu_play_news}       ${lbl_menu_360_channel}     ${lbl_menu_netflix}
...             ${lbl_menu_disney}      ${lbl_menu_we_tv}       ${lbl_menu_viu}             ${lbl_menu_karaoke}         ${lbl_menu_partner}
...             ${lbl_menu_browser}     ${lbl_menu_inbox}       ${lbl_menu_settings}        # 0-22
@{list_live_tv}     ${lbl_add_favorites}    ${lbl_program_guide}    ${lbl_quality}          ${lbl_audio}        ${lbl_all}
...                 ${lbl_favorites}        ${lbl_digital_tv}       ${lbl_movies_series}    ${lbl_variety}      ${lbl_sports}
...                 ${lbl_kids_family}      ${lbl_documentaries}    ${lbl_news_business}    ${lbl_education}    ${lbl_shopping}     # 0-14
@{list_movies}      ${lbl_movies_promotions}     ${lbl_movies_top_10}         ${lbl_movies_action}       ${lbl_movies_comedy}         ${lbl_movies_drama}
...                 ${lbl_movies_romance}        ${lbl_movies_horror}         ${lbl_movies_animation}    ${lbl_movies_action_thai}    ${lbl_movies_drama_thai}
...                 ${lbl_movies_comedy_thai}    ${lbl_movies_horror_thai}    ${lbl_movies_western}      ${lbl_movies_chinese}      # 0-13
# @{lbl_list_poster}      ${pic_poster_top_10}        ${pic_poster_action}         ${pic_poster_comedy}        ${pic_poster_drama}          ${pic_poster_romance}        ${pic_poster_horror}
# ...                     ${pic_poster_animation}     ${pic_poster_action_thai}    ${pic_poster_drama_thai}    ${pic_poster_comedy_thai}    ${pic_poster_horror_thai}    ${pic_poster_western}    ${pic_poster_chinese}
# @{lbl_list_type_movies}     ${lbl_top_10}       ${lbl_action}         ${lbl_comedy}         ${lbl_drama}         ${lbl_romance}        ${lbl_horror}
# ...                         ${lbl_animation}    ${lbl_action_thai}    ${lbl_drama_thai}     ${lbl_comedy_thai}   ${lbl_horror_thai}    ${lbl_western}    ${lbl_chinese}
@{lbl_result_search}    ${lbl_result_live}    ${lbl_result_movies}    ${lbl_result_series}    ${lbl_result_episodes}
@{list_home_content}    ${lbl_home_world_class}     ${lbl_home_recommended}         ${lbl_home_live_sports}         ${lbl_home_new_releases}    ${lbl_home_top_10}
...                     ${lbl_home_aisplay}         ${lbl_home_12345}               ${lbl_home_power_of_us}         ${lbl_home_tero}            ${lbl_home_gmm_grammy}
...                     ${lbl_home_wake_music}      ${lbl_home_rerun_football}      ${lbl_home_take_me_out}         ${lbl_home_tv_series}       ${lbl_home_conan}
...                     ${lbl_home_anime}           ${lbl_home_popular_tv}          ${lbl_home_premium_tv}          ${lbl_home_premium}         ${lbl_home_premium_rerun}
...                     ${lbl_home_playnews}        ${lbl_home_thai_series}         ${lbl_home_you_may_like}        ${lbl_home_thai_movies}     ${lbl_home_action}
...                     ${lbl_home_chinese}         ${lbl_home_idol}                ${lbl_home_animation}           ${lbl_home_cartoons}        ${lbl_home_comedy}
...                     ${lbl_home_drama}           ${lbl_home_romance}             ${lbl_home_horror}              ${lbl_home_concerts}        ${lbl_home_sports}
@{list_tv_channels}     ${lbl_channels_popular_tv}      ${lbl_channels_digital_tv}      ${lbl_channels_premium_tv}      ${lbl_channels_movies}      
...                     ${lbl_channels_varieties}       ${lbl_channels_sports}          ${lbl_channels_kids_family}     ${lbl_channels_documentaries}
...                     ${lbl_channels_news}            ${lbl_channels_education}       ${lbl_channels_shopping}        ${lbl_channels_all}
...                     ${lbl_channels_ais_promotion}
@{pic_banner}           ${pic_banner_one}    ${pic_banner_two}    ${pic_banner_three}
@{list_word_class}      ${pic_netflix}    ${pic_disney}    ${pic_we_tv}    ${pic_viu}    ${pic_karaoke}
@{list_poster}          ${lbl_title_poster_one}    ${lbl_title_poster_two}    ${lbl_title_poster_three}    ${lbl_title_poster_four}    ${lbl_title_poster_five}         
