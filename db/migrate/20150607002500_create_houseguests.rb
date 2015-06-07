class CreateHouseguests < ActiveRecord::Migration
  def change
    create_table :houseguests do |t|
      t.string :name
      t.string :location
      t.float :latitude
      t.float :longitude
      t.integer :age
      t.string :occupation
      t.integer :season_id
      t.integer :placed
      t.integer :votes_against
      t.integer :votes_to_win
      t.text :hoh
      t.text :nominated
      t.text :veto
      t.text :botb
      t.text :have_not
      t.integer :first_day
      t.integer :last_day
      t.text :prizes
      t.boolean :jury
      t.boolean :expelled
      t.boolean :walked

      t.timestamps null: false
    end
  end
end
