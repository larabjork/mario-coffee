require 'rails_helper'

describe "the sign up process" do
  it "adds a new user" do
    visit products_path
    click_link 'Sign up'
    fill_in 'Username', :with => 'Ingrid'
    fill_in 'Email', :with => 'ingrid@coffeelove.com'
    fill_in 'Password', :with => '1234567'
    fill_in 'Password confirmation', :with => '1234567'
    check('Admin?')
    click_on 'Sign Up'
    expect(page).to have_content "You've successfully signed up!"
    expect(page).to have_content 'ingrid@coffeelove.com'
  end
end


describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add New Product'
    fill_in 'Name', :with => 'Mucho Mocha'
    fill_in 'Cost', :with => 15
    fill_in 'Country of origin', :with => 'Ethiopia'
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
