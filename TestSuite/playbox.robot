*** Settings ***
Resource            ../Resources/Keywords/playboxKeywords.robot
Resource            ../Resources/Variables/playboxVariables.robot
Resource            ../Resources/Repositories/playboxRepositories.robot
Resource            ../Resources/Localized/${LANG}/playboxLocalized.robot
Suite Setup         Open Playbox                        
Test Teardown       Go To Home Page          


*** Test Case ***
Test_1_1_001 Setting UI Language
    Click Settings Manu       
    Click Preferences Manu      ${lbl_manu_preferences}
    Click UI Language           ${lbl_ui_language}
    Select Language     ${LANG}

# Test_1_1_002 Setting UI Timeout And Player UI Timeout And Verify
#     Click Settings Manu       
#     Click Preferences Manu
#     Click UI Timeout
#     Select Timeout      ${lbl_timeout_never}      
#     Click Player UI Timeout
#     Select Timeout      ${lbl_timeout_never}
#     Verify UI Timeout And Player UI Timeout

# Test_1_1_003 Verify Manu Banner App And Movies
#     Verify List Manu
#     Verify Banner
#     Verify App
#     Verify Movies

# Test_1_1_004 Use RobotEyes For Verify Banner

# Test_1_1_005 Click Catagory Button And Verify List Catagory
#     Click Live TV
#     Verify Live TV Page
#     Click Catagory
#     Verify Menu In Catagory Page
#     Click Back
#     Verify Live TV Page





