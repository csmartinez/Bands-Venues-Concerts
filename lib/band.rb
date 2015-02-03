class Band < ActiveRecord::Base
  has_many :concerts
  has_many :venues, through: :concerts
  validates(:bandname, {:presence => true, :length => {:maximum => 50}})
  before_save(:capitalize_name)

  private

  define_method(:capitalize_name) do
    self.bandname=(bandname().capitalize())
  end
end
