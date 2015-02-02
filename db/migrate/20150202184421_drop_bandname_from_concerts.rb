class DropBandnameFromConcerts < ActiveRecord::Migration
  def change
    remove_column(:concerts, :bandname, :string)
  end
end
