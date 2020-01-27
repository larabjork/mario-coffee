require 'rails_helper'

context "with a signed-up user" do
  let (:email) {'ingrid@coffeelove.com'}
  before do
    visit products_path
    click_link 'Sign up'
    fill_in 'user_username', :with => 'Ingrid'
    fill_in 'user_email', :with => email
    fill_in 'user_password', :with => '1234567'
    fill_in 'user_password_confirmation', :with => '1234567'
    check('user_admin')
    click_on 'Sign Up'
    click_on 'Sign out'
  end
  it "logs in an existing user" do
    visit signin_path
    fill_in 'Email', :with => email
    fill_in 'Password', :with => '1234567'
    click_on 'Sign in'
    expect(page).to have_content "You've signed in."
    expect(page).to have_content 'ingrid@coffeelove.com'
  end
end

describe "the sign in process" do
  it "returns sign-in error message when login unsuccessful" do
    visit signin_path
    fill_in 'Email', :with => 'ingrid@coffeelove.com'
    fill_in 'Password', :with => '1234567'
    click_on 'Sign in'
    expect(page).to have_content "There was a problem signing in. Please try again."
  end
end
