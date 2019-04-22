class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.String :pais
      t.String :cidade
      t.String :endereco
      t.String :numero
      t.String :cep

      t.timestamps
    end
  end
end
