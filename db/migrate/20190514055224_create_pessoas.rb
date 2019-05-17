class CreatePessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :documento
      t.string :data_nascimento

      t.timestamps
    end
  end
end
