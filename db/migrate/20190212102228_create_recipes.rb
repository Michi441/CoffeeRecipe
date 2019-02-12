class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :instruction
      t.references :coffee_profile, foreign_key: true

      t.timestamps
    end
  end
end
