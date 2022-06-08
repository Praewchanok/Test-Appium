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

Click Settings Menu
    [Documentation]     Owner: Praew
    Wait Element Is Visible     ${lbl_left_panel}
    Loop For Find Menu          22      @{list_menu}                    

Click Preferences Menu
    [Documentation]     Owner: Praew
    Remote Click Element       ${lbl_menu_preferences}

Click UI Language
    [Documentation]     Owner: Praew
    Remote Click Element       ${lbl_ui_language}

Click UI Timeout
    [Documentation]     Owner: Praew
    Remote Click Element       ${lbl_ui_timeout}

Click Player UI Timeout
    [Documentation]     Owner: Praew
    Remote Click Element       ${lbl_player_ui_timeout}

# Click Menu Button
Click Search Icon
    [Documentation]     Owner: Praew
    Click Left
    Remote Click Element        ${icn_search}        

Click Movive Menu
    [Documentation]     Owner: Praew
    Click Menu          ${lbl_menu_movies}          @{list_menu}

Click Live TV Menu
    [Documentation]     Owner: Praew
    Click Menu          ${lbl_menu_live_tv}         @{list_menu}

Click TV Channels Menu
    [Documentation]     Owner: Praew
    Click Menu          ${lbl_menu_tv_channels}     @{list_menu}  

Click AIS 360 Channel Menu
    [Documentation]     Owner: Praew
    Click Menu          ${lbl_menu_360_channel}     @{list_menu}     

Select UI Language
    [Documentation]     Owner: Praew
    [Arguments]         ${LANG}
    IF         "${LANG}" == "EN"
        Remote Click Element    ${lbl_ui_language_en}
    ELSE IF    "${LANG}" == "TH"
        Remote Click Element    ${lbl_ui_language_th}
    END

Select Timeout
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Remote Click Element    ${locator}         

Select Type Movies
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Loop For Select     ${locator}      @{list_movies}

# Select 
Select Type Content
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      @{list}
    Loop For Select     ${locator}      @{list}

Select Tero Music Video
    [Documentation]     Owner: Praew
    Select Type Content     ${lbl_home_tero}    @{list_home_content}

Verify Poster Tero Music Video
    [Documentation]     Owner: Praew
    Verify To The Right     ${pic_home_poster}      1       5

Verify UI Language
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Verify Element Is Visible       ${locator}

Verify UI Timeout And Player UI Timeout
    [Documentation]     Owner: Praew         
    Verify Element Is Visible    ${lbl_topic}
    Verify Element Is Visible    ${lbl_ui_timeout_never}
    Verify Element Is Visible    ${lbl_player_ui_timeout_never}

Verify Menu
    [Documentation]     Owner: Praew
    Wait Element Is Visible     ${lbl_menu_home}
    # Loop For Verify     22      @{list_menu}
    Loop For Verify     @{list_menu}

Verify Banner
    [Documentation]     Owner: Praew
    Verify Element Is Visible       ${pic_banner_one}
    Verify Element Is Visible       ${pic_banner_two}
    Verify Element Is Visible       ${pic_banner_three}

Verify To The Right
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${start}    ${end}
    FOR     ${index}    IN RANGE    ${start}    ${end}
        Verify Poster And Banner  ${locator}[${index}]
        # Log     ${locator}[${index}]
        Click Right
    END

Verify To The Left
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${start}    ${end}      
    ${index}    Set Variable    ${end}
    FOR     ${index-1}    IN RANGE    ${start}    ${end}
        Log     ${locator}[${index-1}]
        Click Left
    END

Verify App
    [Documentation]     Owner: Praew
    Verify Element Is Visible       ${pic_netflix}
    Verify Element Is Visible       ${pic_disney}
    Verify Element Is Visible       ${pic_we_tv}
    Verify Element Is Visible       ${pic_viu}

Verify Movies
    [Documentation]     Owner: Praew
    Wait Until Element Is Visible       ${pic_triage}      
    Verify Element Is Visible           ${pic_triage}                              
    Verify Element Is Visible           ${pic_nha_harn_the_series}
    Verify Element Is Visible           ${pic_bad_beauty}

Verify App Position       # robot -d "070622" -v "LANG:EN" -v "images_dir:actual" "playbox.robot" 
    Open Eyes    AppiumLibrary
    Wait Element Is Visible       ${pic_netflix}
    Capture Element     ${pic_netflix}      tolerance=1    name=Netflix
    Capture Element     ${pic_disney}       tolerance=1    name=Disney Plus Hotstar
    Capture Element     ${pic_we_tv}        tolerance=1    name=We TV
    Capture Element     ${pic_viu}          tolerance=1    name=Viu
    Compare Images

Verify Poster Movies
    [Documentation]     Owner: Praew
    [Arguments]         ${locator_title}    ${locator_poster}
    Verify Element Is Visible       ${locator_title}
    Verify Element Is Visible       ${locator_poster}            

# Verify Content Page
Verify Left Panel
    [Documentation]     Owner: Praew
    Verify Element Is Visible    ${lbl_left_panel}

Verify Right Panel
    [Documentation]     Owner: Praew
    Verify Element Is Visible    ${lbl_right_panel}

Verify Content Home Page
    [Documentation]     Owner: Praew
    Loop For Verify     @{list_home_content}        

Verify Search Page
    [Documentation]     Owner: Praew
    Is Keyboard Shown
    # Open Eyes    AppiumLibrary
    # Wait Element Is Visible       ${pic_keyboard}
    # Capture Element     ${pic_keyboard}      tolerance=1    name=Keyboard
    # Compare Images

Verify Result Search Page
    [Documentation]     Owner: Praew
    Wait Element Is Visible     ${lbl_result_live}
    Loop For Verify Result Search

Verify Live TV Page     # Use
    [Documentation]     Owner: Praew
    Verify Element Is Visible    ${lbl_channel_number}
    Verify Element Is Visible    ${pic_channel_logo}
    Verify Element Is Visible    ${lbl_now_on}
    Verify Element Is Visible    ${lbl_next}
    Verify Element Is Visible    ${lbl_duration}
    Verify Element Is Visible    ${lbl_tv_program}
    Verify Element Is Visible    ${lbl_next_tv_program}

Verify AIS 360 Channel Page
    [Documentation]     Owner: Praew
    Verify Element Is Visible       ${lbl_page_ais_360}
    Verify Element Is Visible       ${pic_list_ais_360}
    Verify To The Right             ${pic_poster}    1    3
    Verify To The Right             ${lbl_poster}    1    3

# Verify List Menu
Verify Menu On Live TV Page
    [Documentation]     Owner: Praew
    Go To Top           ${lbl_quality}
    Verify List         @{list_live_tv}

Verify Menu On Movies Page
    [Documentation]     Owner: Praew
    Verify List         @{list_movies}

Verify Menu On TV Channels Page
    [Documentation]     Owner: Praew
    Verify List         @{list_tv_channels}

# Verify Menu Button
Verify Home Menu
    [Documentation]     Owner: Praew
    Verify Menu Button      ${lbl_menu_home}

Verify Movies Menu
    [Documentation]     Owner: Praew
    Verify Menu Button       ${lbl_menu_movies}

Verify Promotions Menu
    [Documentation]     Owner: Praew
    Verify Menu Button      ${lbl_movies_promotions}

Verify Live TV Menu
    [Documentation]     Owner: Praew
    Verify Menu Button      ${lbl_menu_live_tv}

Verify TV Channels Menu
    [Documentation]     Owner: Praew
    Verify Menu Button      ${lbl_menu_tv_channels}

Verfy AIS 360 Channel Menu
    [Documentation]     Owner: Praew
    Verify Menu Button      ${lbl_menu_360_channel}

# Go To
Go To Home Page
    [Documentation]     Owner: Praew
    Click Back
    Click Home

Go To Top
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Wait Element Is Visible       ${locator}
    Click Up

# Loop
Loop For Find Menu
    [Documentation]     Owner: Praew
    # [Arguments]         ${index_menu}      @{list}
    # FOR    ${index}    ${menu}    IN ENUMERATE    @{list}
    #     IF    "${index}" == "${index_menu}"
    #         Remote Click Element    ${menu}
    #         BREAK
    #     ELSE   
    #         Click Down
    #     END          
    # END
    [Arguments]         ${locator}      @{list}
    FOR    ${name}    IN    @{list}
        IF    '${name}' == '${locator}'
            Remote Click Element    ${locator}
            BREAK
        ELSE   
            Click Down
        END          
    END
    
Loop For Verify
    [Documentation]     Owner: Praew
    # [Arguments]         ${index_menu}    @{list}
    # FOR    ${index}     ${menu}    IN ENUMERATE    @{list}
    #     Verify Element Is Visible       ${menu}
    #     IF    ${index} != ${index_menu}
    #         Click Down
    #     END           
    # END
    # [Arguments]         ${locator}    @{list}
    # FOR    ${text}    IN    @{list}
    #     Verify Element Is Visible       ${text}
    #     IF    '${text}' != '${locator}'
    #         Click Down
    #     END           
    # END
    [Arguments]         @{list}
    ${length}    Get Length     ${list}
    FOR    ${index}    ${locator}    IN ENUMERATE    @{list}
        Verify Element Is Visible    ${locator}
        IF      ${index} != ${length}
                Click Down
        END
    END 

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

Loop For Select
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}    @{list}
    FOR    ${name}    IN    @{list}
        IF    '${name}' == '${locator}'
            BREAK
        ELSE   
            Click Down
        END          
    END                  

# Click Element
Click Menu
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}    @{list}
    Wait Element Is Visible     ${lbl_left_panel}
    Loop For Find Menu      ${locator}    @{list}

# Verify   
Verify List
    [Documentation]     Owner: Praew
    [Arguments]         @{list}
    Wait Element Is Visible     ${lbl_left_panel}
    Loop For Verify     @{list}

Verify Menu Button
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Verify Element Attribute    ${locator}    ${attr_selected}    true

Verify Poster And Banner
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Verify Element Attribute    ${locator}    ${attr_selected}    true
