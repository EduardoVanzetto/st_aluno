class CreatePresencas < ActiveRecord::Migration[5.2]
  def change
    create_table :presencas do |t|
      t.belongs_to :curso, foreign_key: true
      t.belongs_to :disciplina, foreign_key: true
      t.String :presenca

      t.timestamps
    end
  end
end
