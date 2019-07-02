class CreateTiers < ActiveRecord::Migration[6.0]
  def change
    create_table :tiers do |t|
      t.integer :level
      t.string :description
      t.references :alliance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
