class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :unit_no
      t.integer :size
      t.float :rent
      t.boolean :electricity
      t.boolean :water
      t.boolean :gas
      t.references :building_id, foreign_key: true
      t.references :agent_id, foreign_key: true

      t.timestamps
    end
  end
end
