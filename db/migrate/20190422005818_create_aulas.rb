class CreateAulas < ActiveRecord::Migration[5.2]
  def change
    create_table :aulas do |t|
      t.belongs_to :disciplina, foreign_key: true
      t.Date :data
      t.String :objetivo
      t.String :realizado

      t.timestamps
    end
  end
end
