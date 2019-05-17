class AddTipoIdToAnimals < ActiveRecord::Migration[5.0]
  def change
    add_reference :animals, :tipo, foreign_key: true
  end
end
