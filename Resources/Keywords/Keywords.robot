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

Click Down 2 Times
    [Documentation]     Owner: Praew
    Press Keycode    20
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

Click Search Button
    [Documentation]     Owner: Praew
    Press Keycode    66

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

# Verify Element
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

# Select
Loop For Select On Vertical
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}    @{list}
    FOR    ${name}    IN    @{list}
        IF    '${name}' == '${locator}'
            BREAK
        ELSE   
            Click Down
        END          
    END

Select Type On Vertical
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      @{list}
    Click Down
    Loop For Select On Vertical      ${locator}      @{list}

Loop For Select On Horizontal
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}    @{list}
    FOR    ${name}    IN    @{list}
        IF    '${name}' == '${locator}'
            BREAK
        ELSE   
            Click Right
        END          
    END

Select Type On Horizontal
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}      @{list}
    Loop For Select On Horizontal    ${locator}      @{list}

Loop For Find Poster
    [Documentation]     Owner: Praew
    [Arguments]         ${expected}    ${number}    @{list}
    FOR    ${locator}    IN    @{list}    
        IF    '${locator}' == '${lbl_title_poster_one}'
            Check Text Poster    ${expected}    ${locator}
        ELSE IF    '${locator}' == '${lbl_title_poster_two}'
            Check Text Poster    ${expected}    ${locator}
        ELSE IF    '${locator}' == '${lbl_title_poster_three}'
            Check Text Poster    ${expected}    ${locator}
        ELSE IF    '${locator}' == '${lbl_title_poster_four}'
            Check Text Poster    ${expected}    ${locator}
        ELSE IF    '${locator}' == '${lbl_title_poster_five}'
            FOR    ${index}    IN RANGE    ${number}
                ${text}    Get Text    ${locator}
                IF    "${text}" == "${expected}"
                    Remote Click Element    ${locator}
                    BREAK
                ELSE
                    Click Right
                END
            END
        END
    END

    # FOR    ${locator}    IN    @{list}    
    #     IF    "${locator}" == "${lbl_title_poster_one}"
    #         Check Text Poster    ${expected}    ${locator}
    #     ELSE IF    "${locator}" == "${lbl_title_poster_two}"
    #         Check Text Poster    ${expected}    ${locator}
    #     ELSE IF    "${locator}" == "${lbl_title_poster_three}"
    #         Check Text Poster    ${expected}    ${locator}
    #     ELSE IF    "${locator}" == "${lbl_title_poster_four}"
    #         Check Text Poster    ${expected}    ${locator}
    #     ELSE IF    "${locator}" == "${lbl_title_poster_five}"
    #         FOR    ${index}    IN RANGE    ${number}
    #             ${text}    Get Text    ${locator}
    #             IF    "${text}" == "${expected}"
    #                 Remote Click Element    ${locator}
    #                 BREAK
    #             ELSE
    #                 Click Right
    #             END
    #         END
    #     END
    # END

Check Text Poster
    [Documentation]     Owner: Praew
    [Arguments]         ${expected}    ${locator}
    ${text}    Get Text    ${locator}
    IF    "${text}" == "${expected}"
        Remote Click Element    ${locator}
    ELSE
        Click Right
    END

# Click
Loop For Find Menu
    [Documentation]     Owner: Praew
    # [Arguments]         ${index_menu}      @{list}
    # FOR    ${index}    ${menu}    IN ENUMERATE    @{list}
    #     IF    "${index}" == "${index_menu}"
    #         Remote Click Element    ${menu}
    #         BREAK
    #     ELSE   
    #         Click Down
    #     END          
    # END
    [Arguments]         ${locator}      @{list}
    FOR    ${name}    IN    @{list}
        IF    '${name}' == '${locator}'
            Remote Click Element    ${locator}
            BREAK
        ELSE   
            Click Down
        END          
    END

Click Menu
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}    @{list}
    Wait Element Is Visible     ${lbl_left_panel}
    Click Left
    Click Down
    Loop For Find Menu      ${locator}    @{list}

Click Menu On Home Page
    [Documentation]     Owner: Praew
    [Arguments]         ${locator}    @{list}
    Wait Element Is Visible     ${lbl_left_panel}
    Click Left
    Loop For Find Menu      ${locator}    @{list}

# Verify
Loop For Verify
    [Documentation]     Owner: Praew
    # [Arguments]         ${locator}    @{list}
    # FOR    ${text}    IN    @{list}
    #     Verify Element Is Visible       ${text}
    #     IF    '${text}' != '${locator}'
    #         Click Down
    #     END           
    # END
    [Arguments]         @{list}
    ${length}    Get Length     ${list}
    FOR    ${index}    ${locator}    IN ENUMERATE    @{list}
        Verify Element Is Visible    ${locator}
        IF    ${index} != ${length}
            Click Down
        ELSE
            BREAK
        END
    END

Verify List
    [Documentation]     Owner: Praew
    [Arguments]         @{list}
    Click Left
    Wait Element Is Visible     ${lbl_left_panel}
    Loop For Verify     @{list}

Verify Menu Button
    [Documentation]     Owner: Praew
    ...                 Verify highlighting button
    [Arguments]         ${locator}
    Click Left
    Verify Element Attribute    ${locator}    ${attr_selected}    true

