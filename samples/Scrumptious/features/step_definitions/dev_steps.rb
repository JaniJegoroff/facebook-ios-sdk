Given(/^application is launched$/, :main_screen_is_displayed)

Given(/^Login screen is opened$/, :given_login_screen_is_opened)

Given(/^I am logged in to Facebook$/, :given_logged_in_to_facebook)

When(/^I login to Facebook$/, :login_to_facebook)

When(/^I logout from Facebook$/, :logout_from_facebook)

Then(/^Main screen is displayed$/, :main_screen_is_displayed)
