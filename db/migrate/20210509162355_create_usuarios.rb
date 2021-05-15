class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :datanascimento
      t.string :cpf
      t.references :genero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
