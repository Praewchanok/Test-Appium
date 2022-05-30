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

# Setting Language
#     [Documentation]     Owner: Praew
#     Click Settings Manu
#     Click Preferences Manu
#     Select Language     ${LANG}

# Open Playbox And Setting Language
#     [Documentation]     Owner: Praew
#     Open Playbox
#     Setting Language
#     Go To Home Page

Check Language In Application
    [Documentation]     Owner: Praew
    Wait Until Element Is Visible     ${lbl_navigation_menu}    30s    
    ${content_desc}     Get Element Attribute    ${icn_search}      content-desc       
    IF      "${content_desc}" == "Search Action"
        ${lang_system}    Set Variable    EN
    ELSE IF    "${content_desc}" == "การดำเนินการค้นหา"
        ${lang_system}    Set Variable    TH
    END
    Set Test Variable       ${LANG_SYSTEM}      ${lang_system}
    Run Keyword And Return Status       ${LANG_SYSTEM} 
    # RETURN    ${lang_system}

Click Settings Manu
    [Documentation]     Owner: Praew
    Swipe By Percent    10      50        10      0       1000
    Swipe By Percent    10      50        10      0       1000
    Application Click Element       ${lbl_manu_settings}
    Loop For Find Element       ${lbl_manu_settings}    @{lbl_list_manu}

    # IF      ${LANG_SYSTEM} == ${LANG}       # Error = ${LANG_SYSTEM} is not defined nor importable as module
    #     Log     ${LANG_SYSTEM}     
    # ELSE
    #     IF          ${LANG} == EN
    #         Application Click Element       xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="SETTINGS"]
    #     ELSE IF     ${LANG} == TH
    #         Application Click Element       xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="ตั้งค่า"]
    #     END 
    # END                      

Click Preferences Manu
    [Documentation]     Owner: Praew
    Application Click Element       ${lbl_manu_settings}
    # IF      ${LANG_SYSTEM} == ${LANG}
    #     Log     ${LANG_SYSTEM}
    # ELSE
    #     IF          ${LANG} == EN
    #         Application Click Element       xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="Preferences"]
    #     ELSE IF     ${LANG} == TH
    #         Application Click Element       xpath=//*[@resource-id="com.ais.playbox.prod:id/header_label"][@text="การตั้งค่า"]
    #     END 
    # END

Select Language
    [Documentation]     Owner: Praew
    [Arguments]         ${LANG}
    IF      ${LANG_SYSTEM} == ${LANG}
        Log     ${LANG_SYSTEM}
    ELSE IF                
        IF         ${LANG} == EN
            Application Click Element    ${lbl_ui_language_en}
        ELSE IF    ${LANG} == TH
            Application Click Element    ${lbl_ui_language_th}
        END
    END          

Select Timeout
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Application Click Element    ${locator}

Click UI Language
    [Documentation]     Owner: Praew
    Application Click Element       ${lbl_ui_language}

Click UI Timeout
    [Documentation]     Owner: Praew
    Application Click Element       ${lbl_ui_timeout}

Click Player UI Timeout
    [Documentation]     Owner: Praew
    Application Click Element       ${lbl_player_ui_timeout}

Verify UI Timeout And Player UI Timeout      # เปลี่ยนเป็นว่ามีปุ่มนี้
    [Documentation]     Owner: Praew
    Wait Until Element Is Visible      ${lbl_topic}         
    Verify Element Is Visible    ${lbl_topic}
    Verify Element Is Visible    ${lbl_ui_timeout}
    # Verify Element Text          ${lbl_ui_timeout_never}             ${ui_timeout_never}
    Verify Element Is Visible    ${lbl_player_ui_timeout}
    # Verify Element Text         ${lbl_player_ui_timeout_never}      ${player_ui_timeout_never}
    # Verify Element Attribute    ${chk_push_notifications}           ${attr_checked}     true

Go To Home Page
    Click Back
    Click Home
Verify List Manu
    [Documentation]     Owner: Praew
    Wait Until Element Is Visible     ${lbl_manu_home}
    Loop For Verify             @{lbl_list_manu}

Verify Banner
    [Documentation]     Owner: Praew
    Wait Until Element Is Visible       ${pic_banner_one}
    Verify Element Is Visible           ${pic_banner_one}
    Verify Element Is Visible           ${pic_banner_two}
    Verify Element Is Visible           ${pic_banner_three}

Verify App
    [Documentation]     Owner: Praew
    Wait Until Element Is Visible       ${pic_netflix}
    Verify Element Is Visible           ${pic_netflix}
    Verify Element Is Visible           ${pic_disney_plus_hotstar}
    Verify Element Is Visible           ${pic_we_tv}

Verify Movies
    [Documentation]     Owner: Praew
    Wait Until Element Is Visible       ${pic_triage}      
    Verify Element Is Visible           ${pic_triage}                              
    Verify Element Is Visible           ${pic_nha_harn_the_series}
    Verify Element Is Visible           ${pic_bad_beauty}

# Loop
Loop For Find Element
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}   @{list}
    FOR    ${index}    ${name_manu}    IN ENUMERATE    @{list}
        IF    ${index} == 22
            Application Click Element    ${locator}
            BREAK
        ELSE   
            Click Down
        END           
    END

Loop For Verify
    [Documentation]     Owner: Praew
    [Arguments]         @{list}
    FOR    ${index}    ${name_manu}    IN ENUMERATE    @{list}
        Verify Element Is Visible       ${name_manu}
        IF    ${index} != 22
            Click Down
        END           
    END

# Click Element
Click Home
    [Documentation]     Owner: Praew
    Press Keycode    3

Click Back
    [Documentation]     Owner: Praew
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

Application Click Element
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Wait Until Element Is Visible       ${locator}      30s
    Click Element       ${locator}              

# Verify
Verify Element Is Visible
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Element Should Be Visible           ${locator}

Verify Element Text
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${expected}
    Element Text Should Be              ${locator}      ${expected}   

Verify Element Attribute
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${attr_name}    ${match_pattern}
    Element Attribute Should Match      ${locator}      ${attr_name}    ${match_pattern}