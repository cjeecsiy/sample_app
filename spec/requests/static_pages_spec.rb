require 'spec_helper'

describe "StaticPages" do
  describe "Home oage" do
    it "should be have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end
end
