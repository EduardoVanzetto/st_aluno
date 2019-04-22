class CreateProfessores < ActiveRecord::Migration[5.2]
  def change
    create_table :professores do |t|
      t.belongs_to :usuario, foreign_key: true
      t.belongs_to :endereco, foreign_key: true

      t.timestamps
    end
  end
end
