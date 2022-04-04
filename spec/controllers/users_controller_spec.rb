require 'rails_helper'

# ----------- User Registration Paths ------------

#cancel
describe 'get user cancel new page' do
    it "goes to home page" do
        expect(get: '/users/cancel').to route_to(controller: 'users/registrations', action: 'cancel')
    end
end

#new
describe 'get user new registration page' do
    it "goes to new page" do
        expect(get: '/users/sign_up').to route_to(controller: 'users/registrations', action: 'new')
    end
end

#create
describe 'post user create registration route' do
    it "goes to journal index page" do
        expect(post: '/journals').to route_to(controller: 'journals', action: 'create')
    end
end

#delete
describe 'get user sign out page' do
    it "goes to home page" do
        expect(delete: '/users/sign_out').to route_to(controller: 'users/sessions', action: 'destroy')
    end
end

# ----------- User Session Paths ---------------

#new
describe 'get user new session page' do
    it "goes to new page" do
        expect(get: '/users/sign_in').to route_to(controller: 'users/sessions', action: 'new')
    end
end

#create
describe 'post user create session route' do
    it "goes to new page" do
        expect(post: '/users/sign_in').to route_to(controller: 'users/sessions', action: 'create')
    end
end

#delete
describe 'get user sign out page' do
    it "goes to home page" do
        expect(delete: '/users/sign_out').to route_to(controller: 'users/sessions', action: 'destroy')
    end
end

# ----------- User Confirmation Email ----------------

#new
describe 'get user confirmation new page' do
    it "goes to new page" do
        expect(get: '/users/confirmation/new').to route_to(controller: 'users/confirmations', action: 'new')
    end
end

#show
describe 'get user confirmation show page' do
    it "goes to show page" do
        expect(get: '/users/confirmation').to route_to(controller: 'users/confirmations', action: 'show')
    end
end

#create
describe 'post user confirmation create route' do
    it "goes to create page" do
        expect(post: '/users/confirmation').to route_to(controller: 'users/confirmations', action: 'create')
    end
end