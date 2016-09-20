class SearchController < ApplicationController

  def index
    request = "https://api.bestbuy.com/v1/stores((area(80202,25)))?apiKey=tq72hpvtbbd4mue6f23kmsw2&show=longName,city,location,phone,storeType,distance&pageSize=15&callback=JSON_CALLBACK&format=json"
    response = Faraday.get(request)
    @stores = JSON.parse(response.body)['stores'].map do |store|
      OpenStruct.new(store)
    end
  end
end
