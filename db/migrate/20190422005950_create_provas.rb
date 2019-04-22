class CreateProvas < ActiveRecord::Migration[5.2]
  def change
    create_table :provas do |t|
      t.belongs_to :disciplina, foreign_key: true
      t.String :nota

      t.timestamps
    end
  end
end
