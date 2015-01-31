class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :bandname
      t.timestamps
    end
  end
end
