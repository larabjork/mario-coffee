require 'rails_helper'



context "with a signed-in admin user" do
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
  end
  it "adds a new product" do
    visit products_path
    click_link 'Add New Product'
    fill_in 'Name', :with => 'Mucho Mocha'
    fill_in 'product_cost', :with => 15
    fill_in 'product_country_of_origin', :with => 'Ethiopia'
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Mucho Mocha'
  end

  it "gives an error when no information is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Cost can't be blank"
    expect(page).to have_content "Country of origin can't be blank"
  end
end
