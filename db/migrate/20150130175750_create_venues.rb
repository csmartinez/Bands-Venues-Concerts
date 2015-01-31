class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :venuename
      t.timestamps
    end
  end
end
