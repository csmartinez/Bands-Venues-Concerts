class Venue < ActiveRecord::Base
  has_many(:concerts)
  has_many :bands, through: :concerts
  validates(:venuename, {:presence => true, :length => {:maximum => 50}})
  before_save(:capitalize_name)

  private

  define_method(:capitalize_name) do
    self.venuename=(venuename().capitalize())
  end
end
