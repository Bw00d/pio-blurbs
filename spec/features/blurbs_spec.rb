require 'rails_helper'
describe 'creating blurbs', type: :feature, js: true do

  let(:user) { FactoryGirl.create(:admin_user) }
  let(:valid_attributes) { FactoryGirl.attributes_for(:user) }

  before(:each) do 
    login_as(user)
    visit '/'
    click_link "Blurbs"
    click_link "New Blurb"
  end

end

