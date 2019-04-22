Rails.application.routes.draw do
  resources :atividade_extras
  resources :prova_livros
  resources :nota_trabalhos
  resources :presencas
  resources :nota_alunos
  resources :provas
  resources :trabalhos
  resources :aulas
  resources :disciplinas
  resources :cursos
  resources :professores
  resources :alunoos
  resources :pais
  resources :maes
  resources :enderecos
  resources :usuarios
  resources :alunos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
