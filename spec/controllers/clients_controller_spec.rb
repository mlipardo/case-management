require 'rails_helper'
include RSpec
describe ClientsController do
describe 'GET show' do
    it 'renders show template' do
      get :show
    end
end
end
