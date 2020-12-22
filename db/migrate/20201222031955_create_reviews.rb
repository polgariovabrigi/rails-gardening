class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :feedback
      t.integer :rating
      t.references :growth, null: false, foreign_key: true

      t.timestamps
    end
  end
end
