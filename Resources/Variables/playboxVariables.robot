*** Settings ***
Resource        ../Repositories/playboxRepositories.robot

*** Variable ***
${remote_url}           http://localhost:4723/wd/hub
${platformName}         Android
${platformVersion}      7.1.2
${deviceName}           192.168.1.36:6555
${automationName}       UiAutomator2
${appActivity}          net.vimmi.settopbox.ui.main.MainActivity
${appPackage}           com.ais.playbox.prod
${noReset}              true
${udid}                 192.168.1.36:6555

${attr_content-desc}    content-desc
${attr_selected}        selected        # true or false
# ${attr_text}            text
# ${attr_focused}         focused
@{lbl_list_menu}    ${lbl_menu_home}            ${lbl_menu_live_tv}             ${lbl_menu_live_sports}     ${lbl_menu_football}
...                 ${lbl_menu_tv_channels}     ${lbl_menu_movies}              ${lbl_menu_series}          ${lbl_menu_varieties}
...                 ${lbl_menu_concert_or_mv}   ${lbl_menu_kids}                ${lbl_menu_anime}           ${lbl_menu_sports}
...                 ${lbl_menu_play_news}       ${lbl_menu_360_channel}         ${lbl_menu_netflix}         ${lbl_menu_disney}
...                 ${lbl_menu_we_tv}           ${lbl_menu_viu}                 ${lbl_menu_karaoke}         ${lbl_menu_partner}
...                 ${lbl_menu_browser}         ${lbl_menu_inbox}               ${lbl_menu_settings}
@{lbl_list_live_tv}     ${lbl_add_to_favorites}     ${lbl_program_guide}        ${lbl_quality}      ${lbl_audio}    ${lbl_all}       ${lbl_favorites} 
...                     ${lbl_digital_tv}           ${lbl_movies_or_series}     ${lbl_variety_or_entertainment}     ${lbl_sports}    ${lbl_kids_or_family}
...                     ${lbl_documentaries}        ${lbl_news_or_business}     ${lbl_education_or_religion}        ${lbl_shopping}
@{lbl_list_movies}      ${lbl_menu_promotions}
...                     ${lbl_menu_top_10}       ${lbl_menu_action}         ${lbl_menu_comedy}        ${lbl_menu_drama}          ${lbl_menu_romance}        ${lbl_menu_thriller_and_horror}
...                     ${lbl_menu_animation}    ${lbl_menu_action_thai}    ${lbl_menu_drama_thai}    ${lbl_menu_comedy_thai}    ${lbl_menu_horror_thai}    ${lbl_menu_western}    ${lbl_menu_chinese}
# @{lbl_list_poster}      ${pic_poster_top_10}        ${pic_poster_action}         ${pic_poster_comedy}        ${pic_poster_drama}          ${pic_poster_romance}        ${pic_poster_thriller_and_horror}
# ...                     ${pic_poster_animation}     ${pic_poster_action_thai}    ${pic_poster_drama_thai}    ${pic_poster_comedy_thai}    ${pic_poster_horror_thai}    ${pic_poster_western}    ${pic_poster_chinese}
# @{lbl_list_type_movies}     ${lbl_top_10}       ${lbl_action}         ${lbl_comedy}         ${lbl_drama}         ${lbl_romance}        ${lbl_thriller_and_horror}
# ...                         ${lbl_animation}    ${lbl_action_thai}    ${lbl_drama_thai}     ${lbl_comedy_thai}   ${lbl_horror_thai}    ${lbl_western}    ${lbl_chinese}
@{lbl_result_search}        ${lbl_result_live}    ${lbl_result_movies}    ${lbl_result_series}    ${lbl_result_episodes}
@{lbl_list_home}
${lbl_home_world_class}     ${lbl_home_recommended}         ${lbl_home_live_sports}         ${lbl_home_new_releases}    ${lbl_home_top_10}          ${lbl_home_aisplay}
...                         ${lbl_home_12345}               ${lbl_home_power_of_us}         ${lbl_home_tero}            ${lbl_home_gmm_grammy}      ${lbl_home_wake_music}
...                         ${lbl_home_rerun_football}      ${lbl_home_take_me_out}         ${lbl_home_tv_series}       ${lbl_home_conan}           ${lbl_home_anime}
...                         ${lbl_home_popular_tv}          ${lbl_home_premium_tv}          ${lbl_home_premium}         ${lbl_home_premium_rerun}   ${lbl_home_playnews}
...                         ${lbl_home_thai_series}         ${lbl_home_you_may_like}        ${lbl_home_thai_movies}     ${lbl_home_action}          ${lbl_home_chinese}
...                         ${lbl_home_idol}                ${lbl_home_animation}           ${lbl_home_cartoons}        ${lbl_home_comedy}          ${lbl_home_drama}
...                         ${lbl_home_romance}             ${lbl_home_thriller_horror}     ${lbl_home_concerts}        ${lbl_home_sports}
