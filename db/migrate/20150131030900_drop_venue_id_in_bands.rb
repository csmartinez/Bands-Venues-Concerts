class DropVenueIdInBands < ActiveRecord::Migration
  def change
    remove_column(:bands, :venue_id, :integer)
  end
end
