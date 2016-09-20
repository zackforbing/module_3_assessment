class BestBuyStore < OpenStruct

  attr_reader :long_name,
              :city,
              :distance,
              :phone,
              :store_type

  def initialize(attrs)
    @long_name = attrs["longName"]
    @city = attrs["city"]
    @distance = attrs["distance"]
    @phone = attrs["phone"]
    @store_type = attrs["storeType"]
