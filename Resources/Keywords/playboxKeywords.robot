*** Settings ***
Library         AppiumLibrary
Library         RobotEyes
Resource        ./Keywords.robot
Resource        ../Repositories/playboxRepositories.robot
Resource        ../Variables/playboxVariables.robot
Resource        ../Localized/${LANG}/playboxLocalized.robot

*** Keywords ***
Open Playbox
    [Documentation]     Owner: Praew
    Open Application    
    ...                 ${remote_url}
    ...                 platformName=${platformName}
    ...                 platformVersion=${platformVersion}
    ...                 deviceName=${deviceName}
    ...                 automationName=${automationName}
    ...                 appActivity=${appActivity}
    ...                 appPackage=${appPackage}
    ...                 noReset=${noReset}
    ...                 udid=${udid}

Check Language
    [Documentation]     Owner: Praew
    Wait Element Is Visible       ${icn_search}
    ${text}    Get Element Attribute    ${icn_search}      ${attr_content-desc}
    IF          "${LANG}" == "TH"
        IF      "${text}" == "Search Action"
            Click Settings Menu
            Click Preferences Menu
            Click UI Language
            Select Language     ${LANG}
            Verify Element Is Visible       ${lbl_ui_language_selected}
        ELSE
            Verify Element Is Visible       ${icn_search}
        END
    ELSE        
        IF      "${text}" == "การดำเนินการค้นหา"
            Click Settings Menu
            Click Preferences Menu
            Click UI Language
            Select Language     ${LANG}
            Verify Element Is Visible       ${lbl_ui_language_selected}
        ELSE
            Verify Element Is Visible       ${icn_search}
        END
    END

Open Playbox And Check Language
    [Documentation]     Owner: Praew
    Open Playbox
    Check Language
    Go To Home Page
# Click Menu On Home Page
Click Settings Menu
    [Documentation]     Owner: Praew
    Click Menu On Home Page     ${lbl_menu_settings}    @{list_menu}                         

Click Movies Menu
    [Documentation]     Owner: Praew
    # Click Menu          ${lbl_menu_movies}          @{list_menu}
    Click Menu On Home Page     ${lbl_menu_movies}    @{list_menu}

Click Live TV Menu
    [Documentation]     Owner: Praew
    Click Menu On Home Page     ${lbl_menu_live_tv}     @{list_menu}

Click TV Channels Menu
    [Documentation]     Owner: Praew
    Click Menu On Home Page    ${lbl_menu_tv_channels}     @{list_menu}

Click AIS 360 Channel Menu
    [Documentation]     Owner: Praew
    Click Menu On Home Page    ${lbl_menu_360_channel}     @{list_menu}

# Verify Menu Button
Verify Home Menu
    [Documentation]     Owner: Praew
    Verify Menu Button      ${lbl_menu_home}

Verify Movies Menu
    [Documentation]     Owner: Praew
    Verify Menu Button       ${lbl_menu_movies}

Verify Live TV Menu
    [Documentation]     Owner: Praew
    Verify Menu Button      ${lbl_menu_live_tv}

Verify TV Channels Menu
    [Documentation]     Owner: Praew
    Verify Menu Button      ${lbl_menu_tv_channels}

Verify AIS 360 Channel Menu
    [Documentation]     Owner: Praew
    Verify Menu Button      ${lbl_menu_360_channel}

# Click Menu On Settings Page
Click Preferences Menu
    [Documentation]     Owner: Praew
    Remote Click Element       ${lbl_menu_preferences}

# Preferences Page
Click UI Language
    [Documentation]     Owner: Praew
    Remote Click Element       ${lbl_ui_language}

Select UI Language
    [Documentation]     Owner: Praew
    [Arguments]         ${LANG}
    IF         "${LANG}" == "EN"
        Remote Click Element    ${lbl_ui_language_en}
    ELSE IF    "${LANG}" == "TH"
        Remote Click Element    ${lbl_ui_language_th}
    END

Verify UI Language
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Verify Element Is Visible       ${locator}

Click UI Timeout
    [Documentation]     Owner: Praew
    Remote Click Element       ${lbl_ui_timeout}

Click Player UI Timeout
    [Documentation]     Owner: Praew
    Remote Click Element       ${lbl_player_ui_timeout}    

Select Timeout
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Remote Click Element    ${locator}

Verify UI Timeout And Player UI Timeout
    [Documentation]     Owner: Praew         
    Verify Element Is Visible    ${lbl_topic}
    Verify Element Is Visible    ${lbl_ui_timeout_never}
    Verify Element Is Visible    ${lbl_player_ui_timeout_never}

# Home Page
Verify Left Panel
    [Documentation]     Owner: Praew
    Verify Element Is Visible    ${lbl_left_panel} 

Verify Right Panel
    [Documentation]     Owner: Praew
    Verify Element Is Visible    ${lbl_right_panel}

Verify Menu On Home Page
    [Documentation]     Owner: Praew
    Verify List         @{list_menu}

Verify Banner
    [Documentation]     Owner: Praew
    Verify Element Is Visible       ${pic_banner_one}
    Verify Element Is Visible       ${pic_banner_two}
    Verify Element Is Visible       ${pic_banner_three}

Verify App
    [Documentation]     Owner: Praew
    Verify Element Is Visible       ${pic_netflix}
    Verify Element Is Visible       ${pic_disney}
    Verify Element Is Visible       ${pic_we_tv}
    Verify Element Is Visible       ${pic_viu}

Verify Movies
    [Documentation]     Owner: Praew     
    Verify Element Is Visible       ${pic_triage}                              
    Verify Element Is Visible       ${pic_nha_harn_the_series}
    Verify Element Is Visible       ${pic_bad_beauty}

Verify App Position       # robot -d "090622" -v "LANG:EN" -v "images_dir:actual" "playbox.robot" 
    Open Eyes    AppiumLibrary
    Wait Element Is Visible       ${pic_netflix}
    Capture Element     ${pic_netflix}      tolerance=1    name=Netflix
    Capture Element     ${pic_disney}       tolerance=1    name=Disney Plus Hotstar
    Capture Element     ${pic_we_tv}        tolerance=1    name=We TV
    Capture Element     ${pic_viu}          tolerance=1    name=Viu
    Compare Images

Click Search Icon
    [Documentation]     Owner: Praew
    Click Left
    Remote Click Element    ${icn_search}

Verify Search Page
    [Documentation]     Owner: Praew
    Verify Element Is Visible    ${txt_search}
    Is Keyboard Shown
    # Open Eyes    AppiumLibrary
    # Wait Element Is Visible       ${pic_keyboard}
    # Capture Element     ${pic_keyboard}      tolerance=1    name=Keyboard
    # Compare Images

Verify Result Search Page
    [Documentation]     Owner: Praew
    Wait Element Is Visible     ${lbl_result_live}
    Click Down
    Loop For Verify Result Search

Loop For Verify Result Search
    [Documentation]     Owner: Praew     
    FOR     ${title}    IN    @{lbl_result_search}
        IF          '${title}' == '${lbl_result_live}'
            ${status}     Run Keyword And Return Status      Page Should Contain Element    ${pic_result_live}
            Check Status Result Search    ${status}    ${pic_result_live}        ${lbl_result_live_title}      ${lbl_nothing}
            Click Down
        ELSE IF     '${title}' == '${lbl_result_movies}'
            ${status}     Run Keyword And Return Status      Page Should Contain Element    ${pic_result_movies}
            Check Status Result Search    ${status}    ${pic_result_movies}      ${lbl_result_movies_title}    ${lbl_nothing}
            Click Down
        ELSE IF     '${title}' == '${lbl_result_series}'
            ${status}     Run Keyword And Return Status      Page Should Contain Element    ${pic_result_series}
            Check Status Result Search    ${status}    ${pic_result_series}      ${lbl_result_series}          ${lbl_nothing}
            Click Down
        ELSE IF     '${title}' == '${lbl_result_episodes}'
            ${status}     Run Keyword And Return Status      Page Should Contain Element    ${pic_result_episodes}
            Check Status Result Search    ${status}    ${pic_result_episodes}    ${lbl_result_episodes}        ${lbl_nothing}
        END    
    END    

Check Status Result Search
    [Documentation]     Owner: Praew
    [Arguments]         ${status}    ${locator_pic}    ${locator_text}    ${locator_nothing}
    IF      "${status}" == "True"
        Verify Element Is Visible       ${locator_pic}
        Verify Element Is Visible       ${locator_text}
    ELSE
        Verify Element Is Visible       ${locator_nothing}
    END

Verify Content Home Page
    [Documentation]     Owner: Praew
    Loop For Verify     @{list_home_content}

Verify Banner To The Right
    [Documentation]     Owner: Praew
    [Arguments]         ${locator_one}        ${locator_two}    ${end}
    Verify Element Attribute    ${pic_banner_one}    ${attr_selected}    true
    Click Right
    FOR     ${index}    IN RANGE    ${end}
        Verify Element Attribute    ${locator_two}    ${attr_selected}    true
        Click Right
    END

Verify Banner To The Left       # Edit
    [Documentation]     Owner: Praew
    [Arguments]         ${locator_one}    ${locator_two}    ${end}
    FOR     ${index}    IN RANGE    ${end}
        Verify Element Attribute    ${locator_two}    ${attr_selected}    true
        Click Left
    END
    Click Left
    Verify Element Attribute    ${pic_banner_one}    ${attr_selected}    true

# Music Video Content
Select Tero Music Video
    [Documentation]     Owner: Praew
    Select Type On Vertical         ${lbl_home_tero}    @{list_home_content} 

Verify Poster Tero Music Video      # Edit
    [Documentation]     Owner: Praew
    Verify Element Attribute    ${pic_title_poster_one}    
    

# Recommended Content
Select Recommended
    [Documentation]     Owner: Praew
    Select Type On Vertical     ${lbl_home_recommended}    @{list_home_content}

Select Doraemon the Movie : Nobita's New Dinosaur
    [Documentation]     Owner: Praew                                                  
    Loop For Find Poster    ${doreamon}    30    @{list_poster}

Verify Doraemon the Movie : Nobita's New Dinosaur Information Page
    [Documentation]     Owner: Praew
    Verify Element Is Visible    ${pic_poster}
    Verify Element Is Visible    ${btn_play}
    Verify Element Is Visible    ${btn_add_favorites}
    Verify Element Is Visible    ${lbl_detail_title}
    Verify Element Is Visible    ${lbl_detail_description}

Verify Related Titles
    [Documentation]     Owner: Praew
    Verify Element Is Visible    ${lbl_related_titles}
    Verify Element Is Visible    ${pic_title_poster_one}
    Verify Element Is Visible    ${lbl_title_poster_one}

# Word Class Enterainment Content
Select Word Class Entertainment
    [Documentation]     Owner: Praew
    Click Down
    Select Type On Vertical     ${lbl_home_world_class}    @{list_home_content}      

Verify Word Class Entertainment Banner
    [Documentation]     Owner: Praew
    Verify Banner To The Right    @{list_word_class}

Launch Disney Plus Hotstar
    [Documentation]     Owner: Praew
    Remote Click Element    ${pic_disney}

Verify Disney Plus Hotstar Page
    [Documentation]     Owner: Praew
    Verify Element Is Visible    ${lbl_disney_left_panel}
    Verify Element Is Visible    ${pic_disney_banner}

Click Back From Disney Plus Hotstar 
    [Documentation]     Owner: Praew
    Click Back
    Click Back

Launch We TV
    [Documentation]     Owner: Praew
    Remote Click Element    ${pic_we_tv}

Verify We TV Page
    [Documentation]     Owner: Praew
    Verify Element Is Visible       ${icn_wetv}
    Verify Element Is Visible       ${btn_wetv_login}
    Verify Element Is Visible       ${btn_wetv_search}

Click Back From We TV
    [Documentation]     Owner: Praew
    Click Back
    Remote Click Element            ${btn_wetv_qrcode_quit}   


Launch Viu
    [Documentation]     Owner: Praew
    Remote Click Element    ${pic_viu}

Verify Viu Page
    [Documentation]     Owner: Praew
    Verify Element Is Visible           ${icn_viu}
    Verify Element Is Visible           ${btn_viu_select_lang}
    Verify Element Is Visible           ${lbl_viu_welcome}
    Verify Element Is Visible           ${lbl_viu_subtitle}
    Verify Element Is Visible           ${btn_viu_connect_ais}
    Verify Element Is Visible           ${btn_viu_connect_qrcode}
    Verify Element Is Visible           ${btn_viu_connect_pin}
    Verify Element Is Visible           ${lbl_viu_rule}
    Verify Element Is Visible           ${lbl_viu_teams}
    Verify Element Is Visible           ${lbl_viu_personal}

Launch Ais Karaoke   
    [Documentation]     Owner: Praew
    Remote Click Element    ${pic_karaoke}

Verify Ais Karaoke Page
    [Documentation]     Owner: Praew
    Verify Element Is Visible       ${lbl_karaoke_error}
    Verify Element Is Visible       ${lbl_karaoke_error_decs}
    Verify Element Is Visible       ${lbl_karaoke_ok}

Click Back From Ais Karaoke
    [Documentation]     Owner: Praew
    Click Back
    Remote Click Element            ${btn_karaoke_quit}

Select Partner Application Menu
    [Documentation]     Owner: Praew
    Select Type On Vertical    ${lbl_menu_netflix}    @{list_menu}

Verify Icon Of Partner Application
    [Documentation]     Owner: Praew
    Verify Element Is Visible    ${lbl_menu_netflix}
    Verify Element Is Visible    ${lbl_menu_disney}
    Verify Element Is Visible    ${lbl_menu_we_tv}
    Verify Element Is Visible    ${lbl_menu_viu}
    Verify Element Is Visible    ${lbl_menu_karaoke}

# Movies Page
Verify Menu On Movies Page
    [Documentation]     Owner: Praew
    Verify List         @{list_movies}

Verify Poster Movies
    [Documentation]     Owner: Praew
    [Arguments]         ${locator_title}    ${locator_poster}
    Verify Element Is Visible       ${locator_title}
    Verify Element Is Visible       ${locator_poster}        

Verify Promotions Menu
    [Documentation]     Owner: Praew
    Verify Menu Button      ${lbl_movies_promotions}

Select Romance Movies
    [Documentation]     Owner: Praew
    Select Type On Vertical         ${lbl_movies_romance}    @{list_movies}
          
# Live TV Page
Verify Live TV Page
    [Documentation]     Owner: Praew
    Verify Element Is Visible    ${lbl_channel_number}
    Verify Element Is Visible    ${pic_channel_logo}
    # Verify Element Is Visible    ${lbl_now_on}
    # Verify Element Is Visible    ${lbl_next}
    # Verify Element Is Visible    ${lbl_duration}
    # Verify Element Is Visible    ${lbl_tv_program}
    # Verify Element Is Visible    ${lbl_next_tv_program}

Verify Menu On Live TV Page
    [Documentation]     Owner: Praew
    Go To Top           ${lbl_quality}
    Verify List         @{list_live_tv}    

# TV Channels Page      # Add Keyword Channels On Right Panel
Verify Menu On TV Channels Page
    [Documentation]     Owner: Praew
    Verify List         @{list_tv_channels}  

# AIS 360 Channel Page
Verify AIS 360 Channel Page
    [Documentation]     Owner: Praew
    Verify Element Is Visible       ${lbl_page_ais_360}
    Verify Element Is Visible       ${pic_list_ais_360}
    Verify Element Is Visible       ${pic_title_poster_one}                        
    Verify Element Is Visible       ${lbl_title_poster}
# Go To
Go To Home Page
    [Documentation]     Owner: Praew
    # Click Back
    Click Home

Go To Top
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Wait Element Is Visible       ${locator}
    Click Up

Go To Right Panel
    [Documentation]     Owner: Praew
    Wait Element Is Visible     ${lbl_right_panel}
    Click Right                        
