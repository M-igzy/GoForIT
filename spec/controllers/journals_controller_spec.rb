require 'rails_helper'

#index
describe 'get journal/category index page' do
    it "goes to index page" do
        expect(get: '/journals').to route_to(controller: 'journals', action: 'index')
    end
end

#create
describe 'post journal/category create route' do
    it "goes to index page" do
        expect(post: '/journals').to route_to(controller: 'journals', action: 'create')
    end
end

#new
describe 'get journal/category new page' do
    it "goes to new page" do
        expect(get: '/journals/new').to route_to(controller: 'journals', action: 'new')
    end
end

#edit
describe 'get journal/category edit page' do
    it "goes to edit page" do
        expect(get: '/journals/:id/edit').to route_to(controller: 'journals', action: 'edit', id: ':id')
    end
end

#show
describe 'get journal/category show page' do
    it "goes to show page" do
        expect(get: '/journals/:id').to route_to(controller: 'journals', action: 'show', id: ':id')
    end
end

#update
describe 'put journal/category update route' do
    it "goes to show page" do
        expect(put: '/journals/:id').to route_to(controller: 'journals', action: 'update', id: ':id')
    end
end

#destroy
describe 'destroy journal/category delete route' do
    it "goes to show page" do
        expect(delete: '/journals/:id').to route_to(controller: 'journals', action: 'destroy', id: ':id')
    end
end