require 'rails_helper'

#---------- User Registrations ----------

RSpec.describe "Users", type: :feature do

#---------- User Sign In ----------

#new
    describe 'Sign in' do
        before {visit new_user_session_path}
        it 'user' do
            within 'form' do
                fill_in 'email', with: 'sample@email.com'
                fill_in 'password', with: '123123'
                click_button 'login'
            end
            expect(page).to have_current_path user_session_path
        end
    end

#delete
    describe 'Sign in' do
        before {visit new_user_session_path}
        it 'user' do
            within 'form' do
                fill_in 'email', with: 'sample@email.com'
                fill_in 'password', with: '123123'
                click_button 'login'
            end
            expect(page).to have_current_path user_session_path
        end
    end

    describe 'Sign out' do
        before {visit journals_path}
        it 'logs out' do
            expect(page).to have_current_path new_user_session_path
        end
    end

end