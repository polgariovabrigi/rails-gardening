class CreateVegatables < ActiveRecord::Migration[6.0]
  def change
    create_table :vegatables do |t|
      t.string :name
      t.string :variety

      t.timestamps
    end
  end
end
