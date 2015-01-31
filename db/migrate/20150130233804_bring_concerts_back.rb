class BringConcertsBack < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.belongs_to :band, index: true
      t.belongs_to :venue, index: true
      t.datetime :concert_date
      t.timestamps
    end
  end
end
