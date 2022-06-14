*** Settings ***
Resource            ../Resources/Keywords/Keywords.robot
Resource            ../Resources/Keywords/playboxKeywords.robot
Resource            ../Resources/Variables/playboxVariables.robot
Resource            ../Resources/Repositories/playboxRepositories.robot
Resource            ../Resources/Localized/${LANG}/playboxLocalized.robot
Suite Setup         Open Playbox And Check Language                        
Test Teardown       Go To Home Page          


*** Test Case ***
Test_2_1_001 Verify Home Page
    Verify Left Panel
    Verify Menu On Home Page
    Verify Highlighting Button
    Verify Banner
    Verify App Position
    Verify Movies

Test_2_1_002 Click Right Button In Movise Page And Verify Movies Category    # Pass
    Click Movies Menu
    Verify Menu On Movies Page
    Click Right
    Verify Poster Movies    ${lbl_chinese}    ${pic_poster_chinese}      

Test_2_1_003 Click Left Button In Movise Page And Verify Highlighting Button    # Pass    
    Click Movies Menu
    Click Left
    Click Down
    Verify Promotions Menu

Test_2_1_004 Click Ok Button In Movies Page    # Pass
    Click Movies Menu
    Click Left
    Click Down
    Select Romance Movies
    Click Ok                
    Verify Poster Movies    ${lbl_romance}    ${pic_poster_romance}  

Test_2_1_005 Click Back or Return Button And Verify Highlighting Button    # Pass
    Click Movies Menu
    Click Back
    Click Left
    Verify Movies Menu

Test_2_1_006 Click Search Icon And Verify Search Page    # Pass       
    Click Search Icon
    Verify Search Page

Test_2_1_007 Search Something And Verify Result Search Page    # Pass
    Click Search Icon
    Input Text Box      ${txt_search}    hd
    Click Search Button
    Verify Result Search Page       # xpath ของ pic, text ของ movies กับ series ใช้ตัวเดียวกัน ค่าเลยต่อกัน

Test_2_1_008 Click Back From The Search Page    # Pass
    Click Search Icon
    Input Text Box      ${txt_search}    hd
    Click Search Button
    Click Back
    Verify Home Menu

Test_2_1_009 Verify The Content On Right Panel    # Pass
    Verify Right Panel
    Click Right
    Click Down
    Verify Content Home Page

Test_2_1_010 Verify Banner On Right Panel    # Pass
    Verify Right Panel
    Click Right
    Verify Banner To The Right      ${pic_banner_one}    ${pic_banner_two}    5
    Verify Banner To The Left       ${pic_banner_one}    ${pic_banner_two}    5

Test_2_1_011 Click Live TV And Verify Live TV Page    # Pass
    Verify Left Panel
    # Click Live TV
    Click Live TV Menu 
    Verify Live TV Page

Test_2_1_012 Click Back From Live TV Page    # Pass
    Verify Left Panel
    # Click Live TV
    Click Live TV Menu 
    Click Back
    Verify Live TV Menu  

Test_2_1_013 Click TV Channels And Verify TV Channels Page    # Pass
    Verify Left Panel
    Click TV Channels Menu
    Verify Menu On TV Channels Page

Test_2_1_014 Click Back From TV Channels Page    # Pass
    Verify Left Panel
    Click TV Channels Menu
    Click Back
    Verify TV Channels Menu

Test_2_1_015 Click AIS 360 Channel And Verify AIS TV Channel Page    # Pass
    Verify Left Panel
    Click AIS 360 Channel Menu          
    Verify AIS 360 Channel Page

Test_2_1_016 Click Back From AIS 360 Channel Page       # Pass
    Verify Left Panel
    Click AIS 360 Channel Menu     
    Click Back
    Verify AIS 360 Channel Menu

Test_2_1_017 Select Music Video And Verify Poster Music Video
    Go To Right Panel
    Select Tero Music Video
    Verify Poster Tero Music Video

Test_2_1_021 Verify Banner Partner Application    # Pass
    Verify Right Panel
    Click Right
    Select Word Class Entertainment
    Verify Word Class Entertainment Banner

Test_2_1_022 Launch Partner Application And Verify Application Page    # Pass
    Verify Right Panel
    Click Right
    Select Word Class Entertainment
    Launch Disney Plus Hotstar
    Verify Disney Plus Hotstar Page
    Click Back From Disney Plus Hotstar
    Launch We TV
    verify We TV Page
    Click Back From We TV
    Launch Viu
    Verify Viu Page
    Click Back
    Launch Ais Karaoke
    Verify Ais Karaoke Page
    Click Back From Ais Karaoke

Test_2_1_023 Verify Partner Application In The Side Menu And Click Partner Application    # Pass
    Verify Left Panel
    Select Partner Application Menu
    Verify Icon Of Partner Application
    Launch Disney Plus Hotstar
    Verify Disney Plus Hotstar Page
    Click Back From Disney Plus Hotstar
    Launch We TV
    verify We TV Page
    Click Back From We TV
    Launch Viu
    Verify Viu Page
    Click Back
    Launch Ais Karaoke
    Verify Ais Karaoke Page
    Click Back From Ais Karaoke

Test_2_1_024 Select Movies And Verify Movies Information Page    # Pass
    Verify Right Panel
    Click Right
    Select Recommended
    Select Doraemon the Movie : Nobita's New Dinosaur
    Verify Doraemon the Movie : Nobita's New Dinosaur Information Page

Test_2_1_025 Click Down And Verify Related Titles Section
    Verify Right Panel
    Click Right
    Select Recommended
    Select Doraemon the Movie : Nobita's New Dinosaur
    Click Down 2 Times
    Verify Related Titles