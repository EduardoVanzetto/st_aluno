class CreateMaes < ActiveRecord::Migration[5.2]
  def change
    create_table :maes do |t|
      t.String :nome
      t.String :cpf
      t.String :rg

      t.timestamps
    end
  end
end
