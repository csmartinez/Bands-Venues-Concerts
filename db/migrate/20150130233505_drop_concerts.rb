class DropConcerts < ActiveRecord::Migration
  def change
    drop_table :concerts
  end
end
