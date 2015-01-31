class AddBandsToConcerts < ActiveRecord::Migration
  def change
    add_column(:concerts, :bandname, :string)
  end
end
