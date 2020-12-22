class CreateGrowths < ActiveRecord::Migration[6.0]
  def change
    create_table :growths do |t|
      t.integer :growth_time
      t.string :soil_type
      t.text :instructions
      t.references :vegatable, null: false, foreign_key: true
      t.string :season

      t.timestamps
    end
  end
end
