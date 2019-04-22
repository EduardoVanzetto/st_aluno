class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.String :nome
      t.String :rg
      t.String :cpf
      t.String :telefone
      t.String :email

      t.timestamps
    end
  end
end
