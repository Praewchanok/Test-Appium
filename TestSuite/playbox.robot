*** Settings ***
Resource            ../Resources/Keywords/playboxKeywords.robot
Resource            ../Resources/Variables/playboxVariables.robot
Resource            ../Resources/Repositories/playboxRepositories.robot
Resource            ../Resources/Localized/${LANG}/playboxLocalized.robot
Suite Setup         Open Playbox And Check Language                        
Test Teardown       Go To Home Page          


*** Test Case ***
# Test_1_1_001 Setting UI Language
#     Click Settings Manu       
#     Click Preferences Manu
#     Click UI Language
#     Select Language     ${LANG}

Test_1_1_002 Setting UI Timeout And Player UI Timeout And Verify
    Click Settings Manu       
    Click Preferences Manu
    Click UI Timeout
    Select Timeout      ${lbl_timeout_never}      
    Click Player UI Timeout
    Select Timeout      ${lbl_timeout_never}
    Verify UI Timeout And Player UI Timeout

Test_1_1_003 Verify Manu Banner App And Movies In Home Page
    Verify List Manu
    Verify Banner
    Verify App
    Verify Movies

Test_1_1_004 Use RobotEyes For Verify Banner App
    # [Setup]     Set Test Variable       ${images_dir}    actual
    Verify Left Panel
    Verify Banner App Position

Test_1_1_005 Click Catagory Button And Verify List Catagory
    Click Live TV
    Verify Live TV Page
    Click Catagory
    Verify List Catagory
    Click Back
    Verify Live TV Page

Test_1_1_304
    Open AIS Playbox
    Verify Left Panel
    Verify Focusing Button Is Green
    Verify List Menu Top To Down
    Verify List Menu Down To Top
    Verify Right Panel





