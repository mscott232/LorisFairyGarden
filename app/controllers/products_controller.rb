class ProductsController < ApplicationController
  def index
    @products = Product.all

    if params[:search]
      @products = Product.search(params[:search]).order("name").page(params[:page]).per(10)
    else
      @products = Product.all.order("name").page(params[:page]).per(10)
    end
  end

  def show
    @product = Product.find(params[:id])
  end

end
