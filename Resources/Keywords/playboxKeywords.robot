*** Settings ***
Library         AppiumLibrary
Library         RobotEyes
Resource        ../Repositories/playboxRepositories.robot
Resource        ../Variables/playboxVariables.robot
Resource        ../Localized/${LANG}/playboxLocalized.robot

*** Keywords ***
Open Playbox
    [Documentation]     Owner: Praew
    Open Application    ${remote_url}               platformName=${platformName}        platformVersion=${platformVersion}
    ...                 deviceName=${deviceName}    automationName=${automationName}    appActivity=${appActivity}
    ...                 appPackage=${appPackage}    noReset=${noReset}                  udid=${udid}

Check Language
    [Documentation]     Owner: Praew
    Wait Until Element Is Visible       ${icn_search}       30s
    ${text}    Get Element Attribute    ${icn_search}      ${attr_content-desc}
    IF          "${LANG}" == "TH"
        IF      "${text}" == "Search Action"
            Click Settings Manu
            Click Preferences Manu
            Click UI Language
            Select Language     ${LANG}
            Verify Element Is Visible       ${lbl_ui_language_en_or_th}
        ELSE
            Verify Element Is Visible       ${icn_search}
        END
    ELSE        
        IF      "${text}" == "การดำเนินการค้นหา"
            Click Settings Manu
            Click Preferences Manu
            Click UI Language
            Select Language     ${LANG}
            Verify Element Is Visible       ${lbl_ui_language_en_or_th}
        ELSE
            Verify Element Is Visible       ${icn_search}
        END
    END

Open Playbox And Check Language
    [Documentation]     Owner: Praew
    Open Playbox
    Check Language
    Go To Home Page

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
    Application Click Element       ${lbl_manu_preferences}

Click UI Language
    [Documentation]     Owner: Praew
    Application Click Element       ${lbl_ui_language}

Click UI Timeout
    [Documentation]     Owner: Praew
    Application Click Element       ${lbl_ui_timeout}

Click Player UI Timeout
    [Documentation]     Owner: Praew
    Application Click Element       ${lbl_player_ui_timeout}

Select Language
    [Documentation]     Owner: Praew
    [Arguments]         ${LANG}
    IF         "${LANG}" == "EN"
        Application Click Element    ${lbl_ui_language_en}
    ELSE IF    "${LANG}" == "TH"
        Application Click Element    ${lbl_ui_language_th}
    END

Select Timeout
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Application Click Element    ${locator}

Verify UI Timeout And Player UI Timeout
    [Documentation]     Owner: Praew
    Wait Until Element Is Visible      ${lbl_topic}         
    Verify Element Is Visible    ${lbl_topic}
    Verify Element Is Visible    ${lbl_ui_timeout}
    Verify Element Is Visible    ${lbl_ui_timeout_never}
    Verify Element Is Visible    ${lbl_player_ui_timeout}
    Verify Element Is Visible    ${lbl_player_ui_timeout_never}

Verify List Manu
    [Documentation]     Owner: Praew
    Wait Until Element Is Visible     ${lbl_manu_home}
    Loop For Verify     22      @{lbl_list_manu}

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

Verify Banner App       # robot -d "010622" -v "LANG:EN" -v "images_dir:actual" "playbox.robot" 
    Open Eyes    AppiumLibrary
    Wait Until Element Is Visible       ${pic_netflix}
    Capture Element     ${pic_netflix}                  tolerance=1    name=Netflix
    Capture Element     ${pic_disney_plus_hotstar}      tolerance=1    name=Disney Plus Hotstar
    Capture Element     ${pic_we_tv}                    tolerance=1    name=We TV
    Capture Element     ${pic_viu}                      tolerance=1    name=Viu
    Capture Element     ${pic_ais_karaoke}              tolerance=1    name=AIS Karaoke
    Compare Images

Verify List Catagory
    [Documentation]     Owner: Praew
    Go To Top           ${lbl_quality}
    Loop For Verify     14      @{lbl_list_live_tv}

Verify Left Panel
Verify Focusing Button Is Green
Verify List Menu Top To Down
Verify List Menu Down To Top
Verify Right Panel
    

# Go To
Go To Home Page
    [Documentation]     Owner: Praew
    Click Back
    Click Home

Go To Top
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
    [Arguments]         ${last_number_in_list}    @{list}
    FOR    ${index}    ${name_manu}    IN ENUMERATE    @{list}
        Verify Element Is Visible       ${name_manu}
        IF    ${index} != ${last_number_in_list}
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
    Wait Until Element Is Visible       ${locator}      30s
    Element Should Be Visible           ${locator}

Verify Element Text
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${expected}
    Element Text Should Be              ${locator}      ${expected}   

Verify Element Attribute
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${attr_name}    ${match_pattern}
    Element Attribute Should Match      ${locator}      ${attr_name}    ${match_pattern}