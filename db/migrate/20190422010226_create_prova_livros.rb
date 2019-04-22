class CreateProvaLivros < ActiveRecord::Migration[5.2]
  def change
    create_table :prova_livros do |t|
      t.belongs_to :curso, foreign_key: true
      t.belongs_to :disciplina, foreign_key: true
      t.String :nota

      t.timestamps
    end
  end
end
