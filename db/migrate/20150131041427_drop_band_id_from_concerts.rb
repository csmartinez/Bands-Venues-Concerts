class DropBandIdFromConcerts < ActiveRecord::Migration
  def change
    remove_column(:concerts, :band_id, :integer)
  end
end
