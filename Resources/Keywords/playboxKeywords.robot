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
check Language In System
    [Documentation]     Owner: Praew
    ${text}    Get Element Attribute    ${icn_search}      ${attr_content-desc}
    IF      ${text} == Search Action
        ${system}   Set Variable    English
    ELSE    ${text} == การดำเนินการค้นหา
        ${system}   Set Variable    Thai 
    END

Click Settings Manu
    [Documentation]     Owner: Praew
    Wait Until Element Is Visible       ${lbl_navigation_menu}      30s 
    # Swipe By Percent    10      60        10      1       1000
    # Swipe By Percent    10      60        10      1       1000
    # Application Click Element       ${lbl_manu_settings}
    # Loop For Find Element       ${lbl_manu_settings}    @{lbl_list_manu}
    Loop For Find Element       @{lbl_list_manu}                      


Click Preferences Manu
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}         
    ${text}     Get Text    ${locator}
    IF      ${text} == Preferences      
        Application Click Element    xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="Preferences"]
    ELSE    ${text} == การตั้งค่า
        Application Click Element    xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="การตั้งค่า"]
    END
    # Application Click Element       ${lbl_manu_preferences}

Select Language
    [Documentation]     Owner: Praew
    [Arguments]         ${LANG}
    
    IF         ${LANG}:EN
        Application Click Element    ${lbl_ui_language_en}
    ELSE IF    ${LANG}:TH
        Application Click Element    ${lbl_ui_language_th}
    END        

Select Timeout
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Application Click Element    ${locator}

Click UI Language
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}         
    ${text}     Get Text    ${locator}
    IF      ${text} == Preferences      
        Application Click Element    xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="UI Language"]
    ELSE    ${text} == การตั้งค่า
        Application Click Element    xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name"][@text="ภาษาที่ใช้งาน"]
    END
    # Application Click Element       ${lbl_ui_language}

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
    Verify Element Is Visible    ${lbl_ui_timeout_never}
    Verify Element Is Visible    ${lbl_player_ui_timeout}
    Verify Element Is Visible    ${lbl_player_ui_timeout_never}

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

Verify Live TV Page
    [Documentation]     Owner: Praew
    Wait Until Element Is Visible       ${lbl_live_tv_number}
    Verify Element Is Visible    ${lbl_live_tv_number}
    Verify Element Is Visible    ${pic_live_tv_logo}
    # Verify Element Is Visible    ${lbl_live_tv_title}
    # Verify Element Is Visible    ${lbl_live_tv_next}
    # Verify Element Is Visible    ${lbl_live_tv_epg_time}
    # Verify Element Is Visible    ${lbl_live_tv_epg_title}
    # Verify Element Is Visible    ${lbl_live_tv_epg_next}

Verify Menu In Catagory Page
    [Documentation]     Owner: Praew
    Go To Top List Manu     ${lbl_quality}
    Loop For Verify     @{lbl_list_live_tv}

Go To Top List Manu
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Wait Until Element Is Visible       ${locator}      30s
    Click Up

# Loop
Loop For Find Element
    [Documentation]     Owner: Praew
    [Arguments]         @{list}
    FOR    ${index}    ${name_manu}    IN ENUMERATE    @{list}
        IF    ${index} == 22
            Application Click Element    ${name_manu}
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

Click Catagory
    [Documentation]     Owner: Praew
    Press Keycode    82

Click Live TV
    [Documentation]     Owner: Praew
    Press Keycode    133

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