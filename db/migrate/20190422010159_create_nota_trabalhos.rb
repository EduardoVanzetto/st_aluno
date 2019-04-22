class CreateNotaTrabalhos < ActiveRecord::Migration[5.2]
  def change
    create_table :nota_trabalhos do |t|
      t.belongs_to :curso, foreign_key: true
      t.belogns_to :disciplina
      t.String :nota

      t.timestamps
    end
  end
end
