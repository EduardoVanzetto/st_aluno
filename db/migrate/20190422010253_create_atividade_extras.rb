class CreateAtividadeExtras < ActiveRecord::Migration[5.2]
  def change
    create_table :atividade_extras do |t|
      t.belongs_to :curso, foreign_key: true
      t.belongs_to :disciplina, foreign_key: true
      t.String :nota

      t.timestamps
    end
  end
end
