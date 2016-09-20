require 'rails_helper'

describe 'Api::V1::ItemsController' do
  scenario 'user story 1' do
    # When I send a GET request to `/api/v1/items`
    get '/api/v1/items'
    # I receive a 200 JSON response containing all items
    expect :success
    # And each item has an id, name, description, and image_url but not the created_at or updated_at
    items = JSON.parse(response.body)

  end

  scenario 'user story 2' do
    # When I send a GET request to `/api/v1/items/1`
    # I receive a 200 JSON response containing the id, name, description, and image_url but not the created_at or updated_at
  end

  scenario 'user story 3' do
    # When I send a DELETE request to `/api/v1/items/1`
    # I receive a 204 JSON response if the record is successfully deleted
  end
end
