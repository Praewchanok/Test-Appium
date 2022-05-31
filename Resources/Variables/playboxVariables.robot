*** Settings ***
Resource        ../Repositories/playboxRepositories.robot

*** Variable ***
${remote_url}           http://localhost:4723/wd/hub
${platformName}         Android
${platformVersion}      7.1.2
${deviceName}           192.168.1.38:6555
${automationName}       UiAutomator2
${appActivity}          net.vimmi.settopbox.ui.main.MainActivity
${appPackage}           com.ais.playbox.prod
${noReset}              true
${udid}                 192.168.1.38:6555

${attr_content-desc}    content-desc
${attr_text}            text
@{lbl_list_manu}        ${lbl_manu_home}        ${lbl_manu_live_tv}         ${lbl_manu_live_sports}         ${lbl_manu_football}
...     ${lbl_manu_tv_channels}     ${lbl_manu_movies}              ${lbl_manu_series}          ${lbl_manu_varieties}
...     ${lbl_manu_concert_or_mv}   ${lbl_manu_kids}                ${lbl_manu_anime}           ${lbl_manu_sports}
...     ${lbl_manu_play_news}       ${lbl_manu_ais_360_channel}     ${lbl_manu_netflix}         ${lbl_manu_disney_plus_hotstar}
...     ${lbl_manu_we_tv}           ${lbl_manu_viu}                 ${lbl_manu_ais_karaoke}     ${lbl_manu_partner}
...     ${lbl_manu_browser}         ${lbl_manu_inbox}               ${lbl_manu_settings}
@{lbl_list_live_tv}     ${lbl_add_to_favorites}     ${lbl_program_guide}        ${lbl_quality}              ${lbl_audio} 
...     ${lbl_all}      ${lbl_favorites}            ${lbl_digital_tv}           ${lbl_movies_or_series}     ${lbl_variety_or_entertainment}
...     ${lbl_sports}   ${lbl_kids_or_family}       ${lbl_documentaries}        ${lbl_news_or_business}     ${lbl_education_or_religion} 
...     ${lbl_shopping}