class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :name
      t.text :description
      t.integer :average_rating
      t.references :podcast, null: false, foreign_key: true

      t.timestamps
    end
  end
end
