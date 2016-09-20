class SearchController < ApplicationController

  def index
    conn = Faraday.get("https://api.bestbuy.com/v1/stores((area(80202,25)))?apiKey=tq72hpvtbbd4mue6f23kmsw2&show=longName,city,location,phone,storeType,distance&pageSize=15&callback=JSON_CALLBACK&format=json")
    conn.params[:apiKey] = 'tq72hpvtbbd4mue6f23kmsw2'
    require "pry"; binding.pry
  end
end
