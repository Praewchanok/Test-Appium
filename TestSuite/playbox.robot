*** Settings ***
Resource        ../Resources/Keywords/playboxKeywords.robot
Resource        ../Resources/Variables/playboxVariables.robot
Resource        ../Resources/Repositories/playboxRepositories.robot
Resource        ../Resources/Localized/${LANG}/playboxLocalized.robot
Test Setup      Open Playbox                   

*** Test Case ***
Test_1_1_001 Setting UI Language
    [Tags]      Test1
    Setting UI Language             Thai

Test_1_1_002 Setting UI Timeout And Player UI Timeout And Verify Preferences Page
    [Tags]      Test2
    Setting UI Timeout              ${lbl_timeout_never}
    Setting Player UI Timeout       ${lbl_timeout_never}
    Verify Setting UI Preferences Page
    Click Back Two Time

Test_1_1_003 Verify Manu Banner App And Movies
    [Tags]      Test3
    Verify Manu
    Verify Banner App And Movies





