class ProvaLivro < ApplicationRecord
  belongs_to :curso
  belongs_to :disciplina
end
