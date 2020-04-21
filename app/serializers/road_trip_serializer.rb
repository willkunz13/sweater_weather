class RoadTripSerializer
  include FastJsonapi::ObjectSerializer
  attributes :trip, :destination_weather
end
