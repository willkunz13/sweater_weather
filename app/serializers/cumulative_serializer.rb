class CumulativeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :current, :hourly, :daily, :image 
end
