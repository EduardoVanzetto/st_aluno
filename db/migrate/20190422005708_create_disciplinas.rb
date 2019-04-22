class CreateDisciplinas < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplinas do |t|
      t.belongs_to :curso, foreign_key: true
      t.String :nome

      t.timestamps
    end
  end
end
