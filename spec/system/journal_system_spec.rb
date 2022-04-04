require 'rails_helper'

RSpec.describe "Category/Journal", type: :feature do

#new
    describe 'Sign in' do
        before {visit new_user_session_path}
        it 'user' do
            within 'form' do
                fill_in 'email', with: 'yesaugh@gmail.com'
                fill_in 'password', with: '123123'
                click_button 'login'
            end
            expect(page).to have_current_path user_session_path
        end
        describe 'Visit Journal/Category Index Page' do
            before {visit journals_path}
            it 'see all categories' do
                expect(page).to have_current_path journals_path
            end
        end
    end

end