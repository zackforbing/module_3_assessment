require 'rails_helper'

describe 'User can find best buy stores by zip code' do
  scenario 'and uses a correct zip code' do

#   As a user
# When I visit "/"
  visit root_path
  # And I fill in a search box with "80202" and click "search"
  fill_in 'search', with: '80202'
  click_on 'Search'
  # Then my current path should be "/search" (ignoring params)
  expect(current_path).to eq(search_path)
  # And I should see stores within 25 miles of 80202
  # And I should see a message that says "17 Total Stores"
  # And I should see exactly 15 results
  # And I should see the long name, city, distance, phone number and store type for each of the 15 results
  #
  # The name will be a link in the next story:
  #
  # As a user
  # After I have searched a zip code for stores
  # When I click the name of a store
  # Then my current path should be "/stores/:store_id"
  # I should see the store name, store type and address with city, state and zip
  # I should see an unordered list of the store hours in the following format:
  #   * Mon: 10am-9pm
  #   * Tue: 10am-9pm
  #   * Wed: 10am-9pm
  #   * Thurs: 10am-9pm
  #   * Fri: 10am-9pm
  #   * Sat: 10am-9pm
  #   * Sun: 11am-7pm
  end
end
