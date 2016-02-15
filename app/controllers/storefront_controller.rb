class StorefrontController < ApplicationController
  def all_items
  	@products = Product.order(:name)
  end

  def items_by_category
  	# link to this page is: 
  	# <%= link_to categorical_path(category_id: product.category.id) %>
  	@products = Product.where(category: params[:category_id])
  	
  end

  def items_by_brand
  	# link to this page is: 
  	# <%= link_to branding_path(brand: product.brand) %>
  	@products = Product.where(brand: params[:brand])
  end
end
