# This a Devise specific thing for functional tests.
# See https://github.com/plataformatec/devise/issues/closed#issue/608
def stub_env_for_omniauth
  request.env["devise.mapping"] = Devise.mappings[:user]
  env = { "omniauth.auth" => { "provider" => "github", "uid" => "1234",
          "extra" => { "user_hash" => { "email" => "ghost@nobody.com" } }
        } }
  @controller.stub!(:env).and_return(env)
end

Given(/^I have a Github account that I don't mind sharing$/) do
  #stub_env_for_omniauth
end

Given(/^I exist as a user with github credentials$/) do
  @user = FactoryGirl::create(:user, :with_auth_credentials)
end

When(/^I press the Github login button$/) do
  click_on "Log in with Github"
end

When(/^I complete the github authorization flow$/) do
    pending # express the regexp above with the code you wish you had
end

Then(/^I should be redirected to Github$/) do
    pending # express the regexp above with the code you wish you had
end

Then(/^my account should be created and tied to Github$/) do
    pending # express the regexp above with the code you wish you had
end

Then(/^I should be logged in using my Github credentials$/) do
    pending # express the regexp above with the code you wish you had
end

Then(/^I should see a success message telling me that I logged in with Github$/) do
    pending # express the regexp above with the code you wish you had
end

Then(/^my existing account should be tied to my Github credentials$/) do
    pending # express the regexp above with the code you wish you had
end
