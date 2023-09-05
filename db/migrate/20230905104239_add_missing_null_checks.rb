class AddMissingNullChecks < ActiveRecord::Migration[7.0]
  def change
    change_column_null :iphones, :title, false
    change_column_null :iphones, :body, false
    change_column_null :iphones, :img, false
    change_column_null :iphones, :price, false

    change_column_null :reviews, :author, false
    change_column_null :reviews, :rating, false
    change_column_null :reviews, :body, false
  end
end
