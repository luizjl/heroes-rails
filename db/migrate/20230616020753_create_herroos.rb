class CreateHerroos < ActiveRecord::Migration[6.1]
  def change
    create_table :herroos do |t|
      t.string :nome
      t.string :apelido

      t.timestamps
    end
  end
end
