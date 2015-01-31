class Band < ActiveRecord::Base
  belongs_to(:venue)
  validates(:bandname, {:presence => true, :length => {:maximum => 50}})
  before_save(:upcase_name)

private

 define_method(:upcase_name) do
    self.bandname=(bandname().upcase())
  end
end
