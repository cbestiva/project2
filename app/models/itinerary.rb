class Itinerary < ActiveRecord::Base
  has_many :funcheaps :restaurants
  belongs_to :user
end
