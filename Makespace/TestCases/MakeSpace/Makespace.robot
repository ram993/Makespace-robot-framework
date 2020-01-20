*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://dev.mksp.co/address/


*** Test Cases ***
User can search for the Zip Code
    [Documentation]  This is some basic info about the Address Zip code
    [Tags]  Functional
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Wait Until Page Contains  Full service storage at a low monthly price.
    Sleep  3s
    #Input Text  name=zip
    Input Text  name=zip  10038
    Click Element  xpath=//button[@class='city-address-button js-city-address-button show-for-medium-up']
    Sleep  10s

User can selet the best storage
    [Documentation]  User can select on the Storage plans
    [Tags]  Functional
    Wait Until Page Contains  The best value in storage.
    Click Button  xpath=//li[2]//div[1]//div[1]//div[1]//div[3]//button[1]
    Input Text  xpath=//input[@placeholder='0']  4
    Click Button  xpath=//button[contains(text(),"Continue with 5'x5'")]
    Click Button  xpath=//button[@class='epfibpa8 makespace-ui-library-ctdhjf emakht90']

User requested to answer the mentined questions
    [Documentation]  User requested to answer the questions
    [Tags]  Functional
    Wait Until Page Contains  Now, let’s get some details.
    Sleep  5s
    Click Element  xpath=//div[@class='makespace-ui-library-1c6voyp css-14f9sk50']/div[2]/div[1]/div[1]/div[1]/div[2]/label[1]/span
    Sleep  5s
    Click Element  xpath=//div[@class='makespace-ui-library-1c6voyp css-14f9sk50']/div[2]/div[1]/div[2]/div[1]/div[2]/label[1]/span
    Sleep  5s
    Click Element  xpath=//div[@class='makespace-ui-library-1c6voyp css-14f9sk50']/div[2]/div[1]/div[3]/div[1]/div[2]/label[1]/span
    Sleep  5s
    Click Element  xpath=//div[@class='makespace-ui-library-1c6voyp css-14f9sk50']/div[2]/div[1]/div[4]/div[1]/div[2]/label[2]/span
    Sleep  5s
    Click Element  xpath=//div[@class='makespace-ui-library-1c6voyp css-14f9sk50']/div[2]/div[1]/div[5]/div[1]/div[2]/label[2]/span
    Sleep  5s
    Click Button  xpath=//button[@class='css-1oldnow css-1a3l4121 makespace-ui-library-1gxqmnr emakht90']
    Sleep  5s

User to provide address and credit card details
    [Documentation]  User requested to provide address and credit card details
    [Tags]  Functional
    Wait Until Page Contains  Great! Let’s confirm some last details.
    Input Text  name=fullName  Test
    Input Text  name=phone  9009998888
    Input Text  name=email  test@test.com
    Click Element   xpath=//label[@label='Yes']
    #Click Button  xpath=//main[@id='checkout']/div/div[@class='makespace-ui-library-1c6voyp css-14f9sk50']/div[@class='makespace-ui-library-1ybsplp css-14f9sk52']/div[1]/div[1]/div[1]/div[2]/form/div[4]//div[2]/label[2]/span
    Click Button  xpath=//button[@class='css-105ote56 makespace-ui-library-1gd3jm6 emakht90']
    Sleep  5s

    Click Element  name=address_pretty
    Input Text  name=address_pretty  123 William Street, New York, NY, USA
    Clear Element Text  name=address_pretty
    Input Text  name=address_pretty  123 William Street, New York, NY, USA
    #Select From List By Index  name=address_pretty  1

    Sleep  5s

    Click Element  xpath=//button[@class='css-nv2uc43 makespace-ui-library-m8ddco emakht90']

    Click Element  xpath=//input[@placeholder='mm/dd/yyyy']
    Input text  xpath=//input[@placeholder='mm/dd/yyyy']  02/02/2020
    Click Element  xpath=//input[@placeholder='Time']
    Sleep  10s

    Click Button  xpath=//button[@class='css-wkjcpv1 makespace-ui-library-1ggztnq emakht90']
    Sleep  60s

    #Input Text  xpath=//div[@class='makespace-ui-library-1r2yix9 makespace-ui-library-18luru StripeElement StripeElement--empty']/div/iframe[@name='__privateStripeFrame10']  4111111111111111
    #Input Text  xpath=//div[@class='makespace-ui-library-1r2yix9 makespace-ui-library-18luru StripeElement StripeElement--empty']//div[@class='__PrivateStripeElement']//iframe[@name='__privateStripeFrame5']  4111111111111111
    #Click Element  name:name="cardnumber"
    #Input Text  name:name="cardnumber"  4111111111111111
    #Input Text  class:makespace-ui-library-79elbk e1ws5ted0  4111111111111111
    #Input Text  name=__privateStripeFrame5  4111111111111111
    #Input Text  name:exp-date  02/22
    #Input Text  name:cvc  222
    #Input Text  name:card-name  Test

    Click Element  xpath=//span[@class='makespace-ui-library-14ovu1w e1ovri130']
    Sleep  20s
    Click Button  xpath=//button[@class='css-nlchn23 makespace-ui-library-r4lnp8 emakht90']

    Sleep  30s

    #Wait Until Page Contains  Your appointment for










    Close Browser

*** Keywords ***
