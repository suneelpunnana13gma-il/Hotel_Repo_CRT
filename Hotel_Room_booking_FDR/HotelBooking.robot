*** Settings ***
Library                QWeb
Suite Setup            OpenBrowser                 about:Blank                 chrome


*** Variables ***
${MainUrl}             https://automationintesting.online/



*** Test Cases ***
Verify Welocme Heading
    [Documentation]    This is welcome title verification
    [Tags]             WelcomeTC
    GoTo               ${MainUrl}
    VerifyText         Welcome
    ClickText          Rooms                       anchor=1
    ${count}=          GetElementCount             //div[contains(@class,'room-card')]
    Should Be True     ${count} > 0

NegativeTestcase for contact information 
    [Documentation]    This is the contactinformations Submit
    [Tags]             Contactformtc
    ClickText          Contact                     anchor=1
    VerifyText         Send Us a Message
    TypeText           Name                        SuneelTest
    TypeText           Phone                       991281921199
    TypeText           Subject                     information
    TypeText           Message                     TestXYZfdfgshyrutestgdsjdjssddd           anchor=2
    ClickText          Submit
    VerifyText         Email may not be blank
    TypeText          Email                       test@gmail.com
    ClickText         Submit
    VerifyText        Thanks for getting in touch




