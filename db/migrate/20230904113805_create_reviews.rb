class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :author
      t.string :rating
      t.text :body
      t.belongs_to :iphone, null: false, foreign_key: true

      t.timestamps
    end
  end
end
