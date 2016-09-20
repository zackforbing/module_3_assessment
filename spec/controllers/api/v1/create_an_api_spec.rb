require 'rails_helper'

describe Api::V1::ItemsController do
  scenario 'user story 1' do
    item_1 = Item.create(name: "thing1", description: "thing1-ish", image_url: "http://robohash.org/0.png?set=set2&bgset=bg1&size=200x200")
    item_2 = Item.create(name: "thing2", description: "thing2-ish", image_url: "http://robohash.org/0.png?set=set2&bgset=bg1&size=200x200")
    # When I send a GET request to `/api/v1/items`
    get :index
    # I receive a 200 JSON response containing all items
    expect :success
    expect(response.status).to eq(200)
    expect(response.content_type).to eq("application/json")
    # And each item has an id, name, description, and image_url but not the created_at or updated_at
    items = JSON.parse(response.body)

    expect(items.first.keys).to include("id")
    expect(items.first.keys).to include("name")
    expect(items.first.keys).to include("description")
    expect(items.first.keys).to include("image_url")
    expect(items.first.keys).to_not include("created_at")
    expect(items.first.keys).to_not include("updated_at")

  end

  scenario 'user story 2' do
    item_1 = Item.create(name: "thing1", description: "thing1-ish", image_url: "http://robohash.org/0.png?set=set2&bgset=bg1&size=200x200")
    # When I send a GET request to `/api/v1/items/1`
    get :show, id: 1
    # I receive a 200 JSON response containing the id, name, description, and image_url but not the created_at or updated_at
    expect :success
    expect(response.status).to eq(200)
    expect(response.content_type).to eq("application/json")

    item = JSON.parse(response.body)

    expect(item.keys).to include("id")
    expect(item.keys).to include("name")
    expect(item.keys).to include("description")
    expect(item.keys).to include("image_url")
    expect(item.keys).to_not include("created_at")
    expect(item.keys).to_not include("updated_at")
  end

  scenario 'user story 3' do
    # When I send a DELETE request to `/api/v1/items/1`
    # I receive a 204 JSON response if the record is successfully deleted

  end
end
