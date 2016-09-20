class Api::V1::ItemsController < ApplicationController
  respond_to :json

  def index
    @items = Item.all
    render :json => @items
  end
end
