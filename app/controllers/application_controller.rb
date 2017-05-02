class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private #makes the method available only to the controller
	def current_cart #gets the :cart_id from the session object and finds a cart corresponding to this id
		Cart.find(session[:cart_id])

	rescue ActiveRecord::RecordNotFound #if cart is not found, it will create cart
		cart = Cart.create
		session[:cart_id] = cart.id
		cart
	end
end
