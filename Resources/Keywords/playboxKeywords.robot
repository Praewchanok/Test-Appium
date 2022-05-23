*** Settings ***
Library         AppiumLibrary
Resource        ../Repositories/playboxRepositories.robot
Resource        ../Variables/playboxVariables.robot
Resource        ../Localized/EN/playboxENLocalized.robot
Resource        ../Localized/TH/playboxTHLocalized.robot

*** Keywords ***
Open Playbox
    [Documentation]     Owner: Praew
    Open Application
    ...     http://localhost:4723/wd/hub
    ...     platformName=Android
    ...     platformVersion=7.1.2
    ...     deviceName=192.168.1.35:6555
    ...     automationName=UiAutomator2
    ...     appActivity=net.vimmi.settopbox.ui.main.MainActivity
    ...     appPackage=com.ais.playbox.prod
    ...     noReset=true
    ...     udid=192.168.1.35:6555

Verify Detail Page    
    [Documentation]     Owner: Praew
    ...     Verifies that element identified with locator is visible.
    [Arguments]         ${locator}         
    Element Should Be Visible    ${locator} 

Verify Ais Playbox Page
    Wait Until Element Is Visible       ${icn_search}                  
    Verify Detail Page    ${icn_search}
    Verify Detail Page    ${txt_home}
    Verify Detail Page    ${txt_live_tv}
    Verify Detail Page    ${txt_live_sports}
    Verify Detail Page    ${txt_football}
    Verify Detail Page    ${txt_tv_channels}
    Verify Detail Page    ${txt_movies}
    Verify Detail Page    ${txt_series}
    Verify Detail Page    ${txt_varieties}
    Verify Detail Page    ${txt_concert_or_mv}
    # Verify Detail Page    ${txt_kids}
    # Verify Detail Page    ${txt_anime}
    # Verify Detail Page    ${txt_sports}
    # Verify Detail Page    ${txt_play_news}
    # Verify Detail Page    ${txt_ais_360_channel}
    # Verify Detail Page    ${txt_netflix}
    # Verify Detail Page    ${txt_disney_plus_hotstar}
    # Verify Detail Page    ${txt_we_tv}
    # Verify Detail Page    ${txt_viu}
    # Verify Detail Page    ${txt_ais_karaoke}
    # Verify Detail Page    ${txt_partner}
    # Verify Detail Page    ${txt_browser}
    # Verify Detail Page    ${txt_inbox}
    # Verify Detail Page    ${txt_settings}
