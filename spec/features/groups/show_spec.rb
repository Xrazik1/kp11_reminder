require 'rails_helper'

feature 'User can read notices', "
  In order to create notice
  I'd like to be able to read notice
" do

  given!(:notices) { create_list(:notice, 3) }
  background { visit groups_path }

  scenario 'user can see the list of notices' do
    notices.each do |notice|
      expect(page).to have_content notice.content
    end
  end
end


