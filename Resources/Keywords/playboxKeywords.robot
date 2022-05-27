*** Settings ***
Library         AppiumLibrary
Resource        ../Repositories/playboxRepositories.robot
Resource        ../Variables/playboxVariables.robot
Resource        ../Localized/${LANG}/playboxLocalized.robot

*** Keywords ***
Open Playbox
    [Documentation]     Owner: Praew
    Open Application    ${remote_url}               platformName=${platformName}        platformVersion=${platformVersion}
    ...                 deviceName=${deviceName}    automationName=${automationName}    appActivity=${appActivity}
    ...                 appPackage=${appPackage}    noReset=${noReset}                  udid=${udid}

Setting UI Language
    [Documentation]     Owner: Praew
    [Arguments]         ${select_ui_language}
    Click Settings Manu       
    Click Preferences Manu
    Click UI Language
    Select Language     ${select_ui_language}

Setting UI Timeout       # Add Player UI Timeout
    [Documentation]     Owner: Praew
    [Arguments]         ${timeout}
    Click Settings Manu       
    Click Preferences Manu                 
    Click UI Timeout
    Select Timeout      ${timeout}

# Setting Player UI Timeout
#     [Documentation]     Owner: Praew
#     [Arguments]         ${timeout}         
    Click Player UI Timeout
    Select Timeout      ${timeout}

Click Settings Manu
    [Documentation]     Owner: Praew
    Wait Element Is Visible     ${lbl_manu_home}
    # Swipe By Percent    10      50      10      95      duration=1000
    # Click Element       ${lbl_manu_concert_or_mv}
    # Click Element       ${lbl_manu_settings}
    Create List Manu
    Loop For Find Element       ${settings}     ${lbl_manu_settings}    @{LIST_MANU}                   

Create List Manu
    [Documentation]     Owner: Praew
    @{list_manu}        Create List
    ...     ${lbl_manu_home}                ${lbl_manu_live_tv}             ${lbl_manu_live_sports}         ${lbl_manu_football}     
    ...     ${lbl_manu_tv_channels}         ${lbl_manu_movies}              ${lbl_manu_series}              ${lbl_manu_varieties}
    ...     ${lbl_manu_concert_or_mv}       ${lbl_manu_kids}                ${lbl_manu_anime}               ${lbl_manu_sports}
    ...     ${lbl_manu_play_news}           ${lbl_manu_ais_360_channel}     ${lbl_manu_netflix}             ${lbl_manu_disney_plus_hotstar}
    ...     ${lbl_manu_we_tv}               ${lbl_manu_viu}                 ${lbl_manu_ais_karaoke}         ${lbl_manu_partner}     
    ...     ${lbl_manu_browser}             ${lbl_manu_inbox}               ${lbl_manu_settings}
    Set Test Variable       @{LIST_MANU}     @{list_manu}

# Create List Text Manu
#     [Documentation]     Owner: Praew
#     @{list_text_manu}    Create List
#     ...     ${home}             ${live_tv}              ${live_sports}      ${football}                 ${tv_channels}      ${movies}         
#     ...     ${series}           ${varieties}            ${concert_or_mv}    ${kids}                     ${anime}            ${sports}
#     ...     ${play_news}        ${ais_360_channel}      ${netflix}          ${disney_plus_hotstar}      ${we_tv}            ${viu}
#     ...     ${ais_karaoke}      ${partner}              ${browser}          ${inbox}                    ${settings}
#     Set Test Variable       @{LIST_TEXT_MANU}     @{list_text_manu}    

Click Preferences Manu
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_manu_preferences}
    Click Element                   ${lbl_manu_preferences}

Select Language
    [Documentation]     Owner: Praew
    [Arguments]         ${select_ui_language}                
    IF         "${select_ui_language}" == "${ui_language_en}"
            # เพิ่ม รอปุ่ม
            Click Element       ${lbl_ui_language_en}
    ELSE IF    "${select_ui_language}" == "${ui_language_th}" or "${select_ui_language}" == "Thai"
            # เพิ่ม รอปุ่ม เพราะ คอนเฟิมว่ามีปุ่มจริง 
            Click Element       ${lbl_ui_language_th}
    END          

Select Timeout
    [Documentation]     Owner: Praew
    [Arguments]         ${timeout}
    Wait Element Is Visible         ${timeout}
    Click Element                   ${timeout}

Click UI Language
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_ui_language}
    Click Element                   ${lbl_ui_language}

Click UI Timeout
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_ui_timeout}
    Click Element                   ${lbl_ui_timeout}

Click Player UI Timeout
    [Documentation]     Owner: Praew
    Wait Element Is Visible         ${lbl_player_ui_timeout}
    Click Element                   ${lbl_player_ui_timeout}

Verify Setting UI Preferences Page      # เปลี่นนเป็นว่ามีปุ่มนี้
    [Documentation]     Owner: Praew
    Wait Element Is Visible     ${lbl_topic}         
    Verify Element Text         ${lbl_topic}                        ${topic_preferences}
    Verify Element Text         ${lbl_ui_language}                  ${ui_language}
    Verify Element Text         ${lbl_ui_language_en_or_th}         ${ui_language_en_or_th}
    Verify Element Text         ${lbl_ui_timeout}                   ${ui_timeout}
    Verify Element Text         ${lbl_ui_timeout_never}             ${ui_timeout_never}
    Verify Element Text         ${lbl_player_ui_timeout}            ${player_ui_timeout}
    Verify Element Text         ${lbl_player_ui_timeout_never}      ${player_ui_timeout_never}
    Verify Element Text         ${lbl_preferred_audio_language}     ${preferred_audio_language}
    Verify Element Text         ${lbl_audio_language_en_or_th}      ${audio_language_en_or_th}
    Verify Element Text         ${lbl_rewind_or_forward_interval}   ${rewind_or_forward_interval}
    Verify Element Text         ${lbl_rewind_or_forward_time}       ${rewind_or_forward_time}
    Verify Element Text         ${lbl_push_notifications}           ${push_notifications}
    Verify Element Attribute    ${chk_push_notifications}           ${attr_checked}     true

# Verify Manu
#     [Documentation]     Owner: Praew
#     Wait Element Is Visible     ${lbl_manu_home}
#     Verify List Element Text         ${lbl_manu_home}                    ${home}
#     Verify List Element Text         ${lbl_manu_live_tv}                 ${live_tv}
#     Verify List Element Text         ${lbl_manu_live_sports}             ${live_sports}
#     Verify List Element Text         ${lbl_manu_football}                ${football}
#     Verify List Element Text         ${lbl_manu_tv_channels}             ${tv_channels}
#     Verify List Element Text         ${lbl_manu_movies}                  ${movies}
#     Verify List Element Text         ${lbl_manu_series}                  ${series}
#     Verify List Element Text         ${lbl_manu_varieties}               ${varieties}
#     Verify List Element Text         ${lbl_manu_concert_or_mv}           ${concert_or_mv}
#     Verify List Element Text         ${lbl_manu_kids}                    ${kids}
#     Verify List Element Text         ${lbl_manu_anime}                   ${anime}
#     Verify List Element Text         ${lbl_manu_sports}                  ${sports}
#     Verify List Element Text         ${lbl_manu_play_news}               ${play_news}
#     Verify List Element Text         ${lbl_manu_ais_360_channel}         ${ais_360_channel}
#     Verify List Element Text         ${lbl_manu_netflix}                 ${netflix}
#     Verify List Element Text         ${lbl_manu_disney_plus_hotstar}     ${disney_plus_hotstar}
#     Verify List Element Text         ${lbl_manu_we_tv}                   ${we_tv}
#     Verify List Element Text         ${lbl_manu_viu}                     ${viu}
#     Verify List Element Text         ${lbl_manu_ais_karaoke}             ${ais_karaoke}
#     Verify List Element Text         ${lbl_manu_partner}                 ${partner}
#     Verify List Element Text         ${lbl_manu_browser}                 ${browser}
#     Verify List Element Text         ${lbl_manu_inbox}                   ${inbox}
#     Verify List Element Text         ${lbl_manu_settings}                ${settings}

# Verify List Text Manu
#     [Documentation]     Owner: Praew
#     Wait Element Is Visible     ${lbl_manu_home}
#     Create List Manu    
#     Create List Text Manu
#     Loop For Verify Text        @{LIST_MANU}    @{LIST_TEXT_MANU}

Verify List Manu
    [Documentation]     Owner: Praew
    Wait Element Is Visible     ${lbl_manu_home}
    Create List Manu
    Loop For Verify             @{LIST_MANU}

Verify Banner App And Movies
    [Documentation]     Owner: Praew
    Verify Element Is Visible       ${pic_banner_one}
    Verify Element Is Visible       ${pic_banner_two}
    Verify Element Is Visible       ${pic_banner_three}
    Verify Element Is Visible       ${pic_netflix}
    Verify Element Is Visible       ${pic_disney_plus_hotstar}
    Verify Element Is Visible       ${pic_we_tv}      
    Verify Element Is Visible       ${pic_triage}                              
    Verify Element Is Visible       ${pic_nha_harn_the_series}
    Verify Element Is Visible       ${pic_bad_beauty}

# Loop
Loop For Find Element       # อันนี้ไม่ได้ใช้ตัว index
    [Documentation]     Owner: Praew
    [Arguments]         ${name}    ${locator}    @{list}       
    FOR    ${index}    ${name_in_list}    IN ENUMERATE    @{list}
        ${text}     Get Text    ${name_in_list}     # ไม่ค่อยโอเคเท่าไหร่ เหมือนเก็บมาตรวจซ้ำ        
        IF      "${text}" == "${name}"
            Click Element       ${locator}
            BREAK       # มีค่าเท่ากับ  exit for loop 
        ELSE
            Click Down
        END 
    END

Loop For Verify     # อันนี้ไม่ได้ใช้ตัว index
    [Documentation]     Owner: Praew
    [Arguments]         @{list}
    FOR    ${index}    ${name_manu}    IN ENUMERATE    @{list}
        Verify List Element Is Visible       ${name_manu} 
    END

# Loop For Verify Text
#     [Documentation]     Owner: Praew
#     [Arguments]         @{list}     @{list_text}
#     FOR    ${index}    ${name_manu}    IN ENUMERATE    @{list}
#         ${text}     Get Text    ${name_manu}
#         Verify List Element Text    ${text}     ${list_text}[${index}]             
#     END

# Wait Element
Wait Element Is Visible
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Wait Until Element Is Visible       ${locator}      30s

# Click Element
Click Back
    [Documentation]     Owner: Praew
    Press Keycode    4

Click Back Two Time
    [Documentation]     Owner: Praew
    Press Keycode    4
    Press Keycode    4

Click Up
    [Documentation]     Owner: Praew
    Press Keycode    19

Click Down
    [Documentation]     Owner: Praew
    Press Keycode    20

Click Left
    [Documentation]     Owner: Praew
    Press Keycode    21

Click Right
    [Documentation]     Owner: Praew
    Press Keycode    22

# กรุ๊ปคีย์ click element 

# Verify
Verify Element Text
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${expected}
    Element Text Should Be              ${locator}      ${expected}

# Verify List Element Text
#     [Documentation]     Owner: Praew
#     [Arguments]         ${locator}      ${expected}
#     Element Text Should Be              ${locator}      ${expected}
#     Click Down

Verify Element Is Visible
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Element Should Be Visible           ${locator}

Verify List Element Is Visible      # 
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Element Should Be Visible           ${locator}
    Click Down    

Verify Element Attribute
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${attr_name}    ${match_pattern}
    Element Attribute Should Match      ${locator}      ${attr_name}    ${match_pattern}