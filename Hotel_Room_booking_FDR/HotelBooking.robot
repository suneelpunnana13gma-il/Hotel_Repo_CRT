*** Settings ***
Library                QWeb
Suite Setup            OpenBrowser                 about:Blank    chrome


*** Variables ***
${MainUrl}             https://automationintesting.online/
          


*** Test Cases ***
Verify Welocme Heading
    [Documentation]    This is welcome title verification
    [Tags]             WelcomeTC
    GoTo               ${MainUrl}
    VerifyText         Welcome
    ClickText          Rooms    anchor=1
    ${count}=           GetElementCount    .card-title
    Should Be True      ${count} > 0
      



