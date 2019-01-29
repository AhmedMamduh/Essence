require 'rails_helper'

RSpec.describe 'FavoritesController', :type => :request do 


  describe 'GET #index' do
    it 'returns a success response' do
      get favorites_path
      expect(response).to be_success # response.success?
    end
  end


	before do
		@category = Category.create!(name: 'shoes', id: 1)
		@product = Product.create!(title: "test", image_url: "product-1.jpg", price: 100, category_id: 1, id: 1)
    @favorite = Favorite.create!(product_id: 1, id: 1)
	end

  describe 'GET #show' do
    it 'returns a success response' do
      get ('/favorites/1')
      expect(response).to be_success
    end
  end  

end