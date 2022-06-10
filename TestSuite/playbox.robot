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

Test_2_1_010 Verify Banner On Right Panel
    Verify Right Panel
    Click Right
    # Verify Banner To The Right    ${pic_banner}     1       5
    Verify Banner To The Right    @{pic_banner}
    # Verify To The Left     ${pic_banner}     1       5

Test_2_1_011 Click Live TV And Verify Live TV Page
    Click Live TV
    Click Live TV Menu 
    Verify Live TV Page

Test_2_1_012 Click Back From Live TV Page
    Click Live TV
    Click Live TV Menu 
    Click Back
    Verify Live TV Menu  

Test_2_1_013 Click TV Channels And Verify TV Channels Page
    Click TV Channels Menu
    Verify Menu On TV Channels Page

Test_2_1_014 Click Back From TV Channels Page
    Click TV Channels Menu
    Click Back
    Verify TV Channels Menu

Test_2_1_015 Click AIS 360 Channel And Verify AIS TV Channel Page
    Click AIS 360 Channel Menu          
    Verify AIS 360 Channel Page

Test_2_1_016 Click Back From AIS 360 Channel Page       # Pass
    Click AIS 360 Channel Menu     
    Click Back
    Verify AIS 360 Channel Menu

Test_2_1_017 Select Music Video And Verify Poster Music Video
    Go To Right Panel
    Select Tero Music Video
    Verify Poster Tero Music Video

Test_2_1_021 Verify Banner Partner Application

Test_2_1_022 Launch Partner Application And Verify Application Page
    Click Right
    # Launch Partner Application    ${pic_disney}
    Launch Disney Plus Hotstar
    Verify Disney Plus Hotstar Page
    Click Back
    # Launch Partner Application    ${pic_we_tv}
    Launch We TV
    verify We TV Page
    Click Back From We TV
    # Launch Partner Application    ${pic_viu}
    Launch Viu
    Verify Viu Page
    Click Back
    # Launch Partner Application    ${pic_karaoke}
    Launch Ais Karaoke
    Verify Ais Karaoke Page

Test_2_1_023 Verify Partner Application In The Side Menu And Click Partner Application


# Test_2_1_024 Select Movies And Verify Movies Information Page
#     Click Rihgt
#     Select Recommended
#     Select Detective Conun: The Scarlet Alibi
#     Verify Movie Information Page
#     Go To Home Page