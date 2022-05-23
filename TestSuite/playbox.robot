*** Settings ***
Resource        ../Resources/Keywords/playboxKeywords.robot
Resource        ../Resources/Variables/playboxVariables.robot
Resource        ../Resources/Repositories/playboxRepositories.robot
Resource        ../Resources/Localized/EN/playboxENLocalized.robot
Resource        ../Resources/Localized/TH/playboxTHLocalized.robot
Suite Setup     Open Playbox             

*** Test Case ***
Test_1_1_001 Verify
    Verify Ais Playbox Page

