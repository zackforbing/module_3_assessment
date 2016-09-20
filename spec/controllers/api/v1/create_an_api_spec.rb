require 'rails_helper'

describe Api::V1::ItemsController do
  scenario 'user story 1' do
    item_1
    items = [item_1, item_2]
    # When I send a GET request to `/api/v1/items`
    get :index
    # I receive a 200 JSON response containing all items
    expect :success
    # And each item has an id, name, description, and image_url but not the created_at or updated_at
    require "pry"; binding.pry
    items = JSON.parse(response.body)
    expect(items.first.keys).to eq([])

  end

  scenario 'user story 2' do
    item = Item.first
    # When I send a GET request to `/api/v1/items/1`
    get :show, id: 1
    # I receive a 200 JSON response containing the id, name, description, and image_url but not the created_at or updated_at
    expect :success
  end

  scenario 'user story 3' do
    # When I send a DELETE request to `/api/v1/items/1`
    # I receive a 204 JSON response if the record is successfully deleted
  end
end
