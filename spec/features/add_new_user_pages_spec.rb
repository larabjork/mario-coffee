require 'rails_helper'

describe "the sign up process" do
  it "adds a new user" do
    visit products_path
    click_link 'Sign up'
    fill_in 'user_username', :with => 'Ingrid'
    fill_in 'user_email', :with => 'ingrid@coffeelove.com'
    fill_in 'user_password', :with => '1234567'
    fill_in 'user_password_confirmation', :with => '1234567'
    check('user_admin')
    click_on 'Sign Up'
    expect(page).to have_content "You've successfully signed up!"
    expect(page).to have_content 'ingrid@coffeelove.com'
  end
end
