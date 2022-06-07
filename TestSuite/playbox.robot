*** Settings ***
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
    Verify Menu
    Verify Banner
    Verify App
    Verify Movies

Test_1_1_004 Use RobotEyes For Verify App
#     # [Setup]     Set Test Variable       ${images_dir}    actual
    Verify App Position

Test_1_1_005 Click Category Button And Verify List Category
    Click Live TV
    Verify Live TV Page
    Click Category Button
    Verify Category
    Click Back
    Verify Live TV Page

Test_1_1_006 Verify Home Page
    Verify Left Panel
    Verify Menu
    Verify Highlighting Button
    Verify Banner
    Verify App Position
    Verify Movies

Test_1_1_007 Click Right Button In Movise Page And Verify Movies Category
    Click Movies Menu
    Verify Movies Category
    Click Right
    Verify Poster Movies    ${lbl_comedy_thai}    ${pic_poster_drama_thai}      

Test_1_1_008 Click Left Button In Movise Page And Verify Highlighting Button
    Click Movies Menu
    Verify Left Panel
    Click Left
    Click Down
    Verify Highlighting Button      ${lbl_menu_promotions}

Test_1_1_009 Click Ok Button In Movies Page
    Click Movies Menu
    Click Left
    Click Down
    Select Type Movies      ${lbl_menu_romance}
    Click Ok                
    Verify Poster Movies    ${lbl_romance}    ${pic_poster_romance}  

Test_1_1_010 Click Back or Return Button And Verify Highlighting Button
    Click Movies Menu
    Verify Left Panel
    Click Back
    Click Left
    Verify Highlighting Button      ${lbl_menu_movies}

Test_1_1_011 Click Search Icon And Verify Search Page
    Click Search Icon
    Verify Search Page

Test_1_1_012 Search Something And Verify Result Search Page
    Click Search Icon
    Input Text Box      ${txt_search}    hd
    Click Search Button
    Verify Result Search Page       # xpath ของ pic, text ของ movies กับ series ใช้ตัวเดียวกัน ค่าเลยต่อกัน

Test_1_1_013 Click Back From The Search Page
    Click Search Icon
    Input Text Box      ${txt_search}    hd
    Click Search Button
    Click Back
    Verify Home Button

Test_1_1_014 Verify The Content On Right Panel
    Verify Left Panel
    Click Right
    Verify Content Home Page