class ProductsController < ApplicationController
    def index
        session[:cart]
    end

    def add
        @item = Item.find(params[:id])
        cart << @item.id
    end
end