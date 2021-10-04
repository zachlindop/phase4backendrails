class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :fav_loz_game
      t.string :pic

      t.timestamps
    end
  end
end
