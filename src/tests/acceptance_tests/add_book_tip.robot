*** Settings ***
Resource  resource.robot
Test Setup  Setup Service And Input Add Command

*** Test Cases ***
Add Book Tip
    Input Book Tip  book  writer  1-56619-909-3  2000
    Run And Quit Application
    Output Should Contain  Kirja lisätty
    Database Should Contain Book  book  writer  1-56619-909-3  2000

*** Keywords ***
Setup Service And Input Add Command
    Clear Database
    Setup App
    Input Command  a