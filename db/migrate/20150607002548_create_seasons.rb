class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :year
      t.text :description

      t.timestamps null: false
    end
  end
end
