class CreateContatos < ActiveRecord::Migration[6.1]
  def change
    create_table :contatos do |t|
      t.string :numero
      t.string :tipo
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
