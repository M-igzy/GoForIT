require 'rails_helper'

describe 'get home page' do
    it "goes to home page" do
        expect(get: '/').to route_to(controller: 'home', action: 'index')
    end
end