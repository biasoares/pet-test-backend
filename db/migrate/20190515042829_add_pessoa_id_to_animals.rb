class AddPessoaIdToAnimals < ActiveRecord::Migration[5.0]
  def change
    add_reference :animals, :pessoa, foreign_key: true
  end
end
