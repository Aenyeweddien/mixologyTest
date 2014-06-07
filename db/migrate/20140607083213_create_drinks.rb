class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :recipe

      t.timestamps
    end
  end
end
