class Venue < ActiveRecord::Base
  has_many(:bands)
end
