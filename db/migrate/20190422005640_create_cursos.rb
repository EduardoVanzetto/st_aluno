class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.String :nome

      t.timestamps
    end
  end
end
