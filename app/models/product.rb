class Product < ApplicationRecord
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	validates :image, attachment_presence: true
	validates :title, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}


  belongs_to :category
  has_many :favorites, dependent: :destroy
end
