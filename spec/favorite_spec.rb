require 'rails_helper'

RSpec.describe 'FavoritesController', :type => :request do 

  before do
    @category = Category.create!(name: 'shoes', id: 1)
    @product = Product.create!(title: "test", image: File.new(Rails.root.join('app','assets', 'images', 'product-1.jpg')), price: 100, category_id: 1, id: 1)
    @user = User.create!(email: "test1@test.com", password: "123456", id: 2)
    sign_in @user
    get root_path
    @favorite = Favorite.create!(product_id: 1, user_id: 2, id: 1)
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get favorites_path
      expect(response).to be_success
    end
  end 

end