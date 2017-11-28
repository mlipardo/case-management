require 'rails_helper'

RSpec.describe ClientsController, type: :controller do
describe 'GET show' do
    it 'renders show template' do
      get :show
    end
end
end
