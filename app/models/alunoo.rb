class Alunoo < ApplicationRecord
  belongs_to :usuario
  belongs_to :mae
  belongs_to :pai
  belongs_to :endereco
end
