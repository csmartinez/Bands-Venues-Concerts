class DropBands < ActiveRecord::Migration
  def change
    drop_table :bands
  end
end
