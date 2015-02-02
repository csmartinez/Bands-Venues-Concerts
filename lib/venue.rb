class Venue < ActiveRecord::Base
  has_many(:concerts)
  has_many :bands, through: :concerts
  validates(:venuename, {:presence => true, :length => {:maximum => 50}})
  before_save(:upcase_name)

  private

  define_method(:upcase_name) do
    self.venuename=(venuename().upcase())
  end
end
