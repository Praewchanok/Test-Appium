*** Settings ***
Library         AppiumLibrary
Library         RobotEyes
Resource        ../Repositories/playboxRepositories.robot
Resource        ../Variables/playboxVariables.robot
Resource        ../Localized/${LANG}/playboxLocalized.robot

*** Keywords ***
# Click Button
Click Home
    [Documentation]     Owner: Praew
    Press Keycode    3

Click Back
    [Documentation]     Owner: Praew
    Press Keycode    4

Click Up
    [Documentation]     Owner: Praew
    Press Keycode    19

Click Down
    [Documentation]     Owner: Praew
    Press Keycode    20

Click Left
    [Documentation]     Owner: Praew
    Press Keycode    21

Click Right
    [Documentation]     Owner: Praew
    Press Keycode    22

Click Ok
    [Documentation]     Owner: Praew
    Press Keycode    23

Click Category Button
    [Documentation]     Owner: Praew
    Press Keycode    82

Click Live TV
    [Documentation]     Owner: Praew
    Press Keycode    133

Remote Click Element
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Wait Element Is Visible       ${locator}
    Click Element       ${locator}

# Input Text
Input Text Box
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${text}
    Wait Element Is Visible       ${locator}
    Input Text          ${locator}      ${text}

# Wait Element
Wait Element Is Visible
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Wait Until Element Is Visible       ${locator}      30s

# Verify
Verify Element Is Visible
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}
    Wait Element Is Visible         ${locator}
    Element Should Be Visible       ${locator}

Verify Element Text
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${expected}
    Wait Element Is Visible     ${locator}
    Element Text Should Be      ${locator}      ${expected}

Verify Element Attribute
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      ${attr_name}    ${match_pattern}
    Wait Element Is Visible     ${locator}
    Element Attribute Should Match      ${locator}      ${attr_name}    ${match_pattern}    regexp = True