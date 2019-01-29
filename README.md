# README

Simple e-commerce platform with categories and favorites list developed using Ruby on Rails.

Include:

Adding favorites products to favorites list.

Modern and simple Bootstrap UI.

Postgresql DB

Simple unit testing with rspec.

Implementing categories:

created a scaffold for Category and Product and Category_id column in the Product model acts a foreign key between Product and Category. After created two models, defined the relationship between them. also new Products are include what category they belongs to.

Implementing favorites:

Added new scaffold called favorite that belongs to Product by product_id column.
To add any product to your favorites list just click on the favorite icon on the right-top of any products, thats it now this product in your favroites list. to remove the product just click on it again or remove it from the favorites list page.