require 'rails_helper'

#index
describe 'get task index page' do
    it "goes to index page" do
        expect(get: '/journals/:journal_id/tasks').to route_to(controller: 'tasks', action: 'index', journal_id: ':journal_id')
    end
end

#create
describe 'post task create route' do
    it "goes to index page" do
        expect(post: '/journals/:journal_id/tasks').to route_to(controller: 'tasks', action: 'create', journal_id: ':journal_id')
    end
end

#new
describe 'get task new page' do
    it "goes to new page" do
        expect(get: '/journals/:journal_id/tasks/new').to route_to(controller: 'tasks', action: 'new', journal_id: ':journal_id')
    end
end

#edit
describe 'get task edit page' do
    it "goes to edit page" do
        expect(get: '/journals/:journal_id/tasks/:id/edit').to route_to(controller: 'tasks', action: 'edit', journal_id: ':journal_id', id: ':id')
    end
end

#show
describe 'get task show page' do
    it "goes to show page" do
        expect(get: '/journals/:journal_id/tasks/:id').to route_to(controller: 'tasks', action: 'show', journal_id: ':journal_id', id: ':id')
    end
end

#update
describe 'put task update route' do
    it "goes to show page" do
        expect(put: '/journals/:journal_id/tasks/:id').to route_to(controller: 'tasks', action: 'update', journal_id: ':journal_id', id: ':id')
    end
end

#destroy
describe 'destroy task delete route' do
    it "goes to show page" do
        expect(delete: '/journals/:journal_id/tasks/:id').to route_to(controller: 'tasks', action: 'destroy', journal_id: ':journal_id', id: ':id')
    end
end