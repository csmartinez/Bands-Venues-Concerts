class Band < ActiveRecord::Base
  has_many :concerts
  has_many :venues, through: :concerts
  validates(:bandname, {:presence => true, :length => {:maximum => 50}})
  before_save(:upcase_name)

  private

  define_method(:upcase_name) do
    self.bandname=(bandname().upcase())
  end
end
