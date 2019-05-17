class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :nome
      t.float :custo_mensal

      t.timestamps
    end
  end
end
