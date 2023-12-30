Feature: To validate login

Scenario: To validate login using valid username and valid password

Given user starts "chrome" browser
And user launch app using "https://adactinhotelapp.com/"
When user enters text "reyaz009" in textbox using xpath "//input[@name='username']"
And user enters text "reyaz123" in textbox using xpath "//input[@name='password']"
And user clicks button xpath "//input[@name='login']"
Then user verify the title of page to be "Adactin.com - Search Hotel"

@regression @smoke @wip
Scenario Outline: To validate login using valid username and invalid password

Given user starts "chrome" browser
And user launch app using "https://adactinhotelapp.com/"
When user enters text '<username>' in textbox using xpath "//input[@name='username']"
And user enters text '<password>' in textbox using xpath "//input[@name='password']"
And user clicks button xpath "//input[@name='login']"
Then user verify the presence of text using xpath "//div[@class='auth_error']/b"
| error message|
|Invalid Login details or Your Password might have expired. |
Then user verify the title of page to be "Adactin.com - Hotel Reservation System"

Examples: 
|username|password|
|reyaz009|reyaz654|
|reyaz999|reyaz123|
|reyaz1233|reyaz456|

