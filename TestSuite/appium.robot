*** Settings ***
Resource            ../Resources/Keywords/Keywords.robot
Resource            ../Resources/Keywords/playboxKeywords.robot
Resource            ../Resources/Variables/playboxVariables.robot
Resource            ../Resources/Repositories/playboxRepositories.robot
Resource            ../Resources/Localized/${LANG}/playboxLocalized.robot
Suite Setup         Open Playbox And Check Language                        
Test Teardown       Go To Home Page          


*** Test Case ***
Test_1_1_001 Setting UI Language
    Click Settings Menu       
    Click Preferences Menu
    Click UI Language
    Select UI Language      ${LANG}
    Verify UI Language      ${lbl_ui_language_selected}

Test_1_1_002 Setting UI Timeout And Player UI Timeout And Verify
    Click Settings Menu       
    Click Preferences Menu
    Click UI Timeout
    Select Timeout          ${lbl_timeout_never}      
    Click Player UI Timeout
    Select Timeout          ${lbl_timeout_never}

Test_1_1_003 Verify Menu And Banner And App And Movies
    Verify Menu On Home Page
    Verify Banner
    Verify App
    Verify Movies

Test_1_1_004 Use RobotEyes For Verify App
    # [Setup]     Set Test Variable       ${images_dir}    actual
    Verify App Position

Test_1_1_005 Click Category Button And Verify List Category
    Click Live TV
    Verify Live TV Page
    Click Category Button
    Verify Menu On Live TV Page
    Click Back
    Verify Live TV Page
    