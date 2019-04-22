class CreateNotaAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :nota_alunos do |t|
      t.String :nota

      t.timestamps
    end
  end
end
