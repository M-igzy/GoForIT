require 'rails_helper'

#index
describe 'get description index page' do
    it "goes to index page" do
        expect(get: '/journals/:journal_id/tasks/:task_id/descriptions').to route_to(controller: 'descriptions', action: 'index', journal_id: ':journal_id', task_id: ':task_id')
    end
end

#create
describe 'post description create route' do
    it "goes to index page" do
        expect(post: '/journals/:journal_id/tasks/:task_id/descriptions').to route_to(controller: 'descriptions', action: 'create', journal_id: ':journal_id', task_id: ':task_id')
    end
end

#new
describe 'get description new page' do
    it "goes to new page" do
        expect(get: '/journals/:journal_id/tasks/:task_id/descriptions/new').to route_to(controller: 'descriptions', action: 'new', journal_id: ':journal_id', task_id: ':task_id')
    end
end

#edit
describe 'get description edit page' do
    it "goes to edit page" do
        expect(get: '/journals/:journal_id/tasks/:task_id/descriptions/:id/edit').to route_to(controller: 'descriptions', action: 'edit', journal_id: ':journal_id', id: ':id', task_id: ':task_id')
    end
end

#show
describe 'get description show page' do
    it "goes to show page" do
        expect(get: '/journals/:journal_id/tasks/:task_id/descriptions/:id').to route_to(controller: 'descriptions', action: 'show', journal_id: ':journal_id', id: ':id', task_id: ':task_id')
    end
end

#update
describe 'put description update route' do
    it "goes to show page" do
        expect(put: '/journals/:journal_id/tasks/:task_id/descriptions/:id').to route_to(controller: 'descriptions', action: 'update', journal_id: ':journal_id', id: ':id', task_id: ':task_id')
    end
end

#destroy
describe 'destroy description delete route' do
    it "goes to show page" do
        expect(delete: '/journals/:journal_id/tasks/:task_id/descriptions/:id').to route_to(controller: 'descriptions', action: 'destroy', journal_id: ':journal_id', id: ':id', task_id: ':task_id')
    end
end