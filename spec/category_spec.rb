require 'rails_helper'

RSpec.describe 'CategoriesController', :type => :request do 


  describe 'GET #index' do
    it 'returns a success response' do
      get categories_path
      expect(response).to be_success
    end
  end

  before do
      @category = Category.create!(name: 'shoes', id: 1)
  end

  describe 'GET #show' do
    it 'returns a success response' do
      get ('/categories/1')
      expect(response).to be_success
    end
  end  

end