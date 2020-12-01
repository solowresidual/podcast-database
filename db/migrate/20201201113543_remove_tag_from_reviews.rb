class RemoveTagFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :tag
  end
end
