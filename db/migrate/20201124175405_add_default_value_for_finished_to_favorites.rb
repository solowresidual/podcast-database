class AddDefaultValueForFinishedToFavorites < ActiveRecord::Migration[6.0]
  def change
    change_column_default :favorites, :finished, from: true, to: false
  end
end
