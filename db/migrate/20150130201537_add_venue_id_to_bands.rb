class AddVenueIdToBands < ActiveRecord::Migration
  def change
    add_column(:bands, :venue_id, :integer)
  end
end
