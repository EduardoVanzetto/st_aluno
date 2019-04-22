class CreateAlunoos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunoos do |t|
      t.belongs_to :usuario, foreign_key: true
      t.belongs_to :mae, foreign_key: true
      t.belongs_to :pai, foreign_key: true
      t.belongs_to :endereco, foreign_key: true
      t.String :nascimento

      t.timestamps
    end
  end
end
