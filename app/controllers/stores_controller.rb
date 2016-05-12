class StoresController < ApplicationController


  # GET /stores
  # GET /stores.json
  def index
    page = params[:page].to_i
    @products = Product.limit(5).offset( page * 5)
  end

  # GET /stores/1
  # GET /stores/1.json
  def show
    @product = Product.find(params[:id])
  end

end
