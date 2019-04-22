json.extract! usuario, :id, :nome, :rg, :cpf, :telefone, :email, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
