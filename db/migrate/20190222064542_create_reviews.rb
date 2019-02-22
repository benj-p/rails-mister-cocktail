class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :user
      t.string :content
      t.integer :rating
      t.references :cocktail, foreign_key: true

      t.timestamps
    end
  end
end
