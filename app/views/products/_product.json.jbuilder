json.extract! product, :id, :title, :image_url, :price, :cateegory_id, :created_at, :updated_at
json.url product_url(product, format: :json)
