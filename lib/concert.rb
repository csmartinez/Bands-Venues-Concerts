class Concert < ActiveRecord::Base
  belongs_to(:venue)
  belongs_to(:band)
end
