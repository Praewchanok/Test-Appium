*** Settings ***
Resource            ../Resources/Keywords/playboxKeywords.robot
Resource            ../Resources/Variables/playboxVariables.robot
Resource            ../Resources/Repositories/playboxRepositories.robot
Resource            ../Resources/Localized/${LANG}/playboxLocalized.robot
# Suite Setup         Open Playbox And Setting Language
Suite Setup         Open Playbox                        
Test Teardown       Go To Home Page          


*** Test Case ***
Test_1_1_001 Setting UI Language
    # Check Language In Application
    Click Settings Manu       
    Click Preferences Manu
    Click UI Language
    # Select Language     ${LANG}

Test_1_1_002 Setting UI Timeout And Player UI Timeout And Verify
    Click Settings Manu       
    Click Preferences Manu
    Click UI Timeout
    Select Timeout      ${lbl_timeout_never}      
    Click Player UI Timeout
    Select Timeout      ${lbl_timeout_never}
    Verify UI Timeout And Player UI Timeout

Test_1_1_003 Verify Manu Banner App And Movies
    Verify List Manu
    Verify Banner
    Verify App
    Verify Movies





