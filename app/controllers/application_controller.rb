class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :categories
  before_filter :brands

  def categories
  	@categories = Category.order(:name)
  end 

  def brands
  	@brands = Product.pluck(:brand).sort.uniq!
  		if @brands == nil
  			@brands = Product.pluck(:brand).sort
  		end
  end

end
