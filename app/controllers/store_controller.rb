class StoreController < ApplicationController
  def index
    @counter = increment_counter
    @products = Product.order(:title)
  end

  private
    def increment_counter
      session[:counter] ||= 0
      session[:counter] += 1
    end
end
