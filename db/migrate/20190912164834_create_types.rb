class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.string :fruit
      t.string :chocolate
      t.string :mint

      t.timestamps
    end
  end
end
