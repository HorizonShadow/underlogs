class CreateCardAlliances < ActiveRecord::Migration[6.0]
  def change
    create_join_table :cards, :alliances do |t|
      t.references :card, index: true, foreign_key: true
      t.references :alliance, index: true, foreign_key: true
      t.index [:card_id, :alliance_id]
      t.index [:alliance_id, :card_id]
    end
  end
end
