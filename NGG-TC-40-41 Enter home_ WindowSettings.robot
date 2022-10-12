*** Settings ***
Library   AppiumLibrary

Resource    Resources/NGG-TC-40-41 Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Automation Profile_Settings
       Open App
       # NGG-TC-41
       Home-Settings
       # NGG-TC-40
       Enter Windows Settings