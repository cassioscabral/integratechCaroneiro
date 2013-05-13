class Perfil < ActiveRecord::Base
  belongs_to :user
  attr_accessible :bairro, :cidade, :idade, :nome_exibicao, :perfil_facebook, :trabalha, :user_id

  #falta validacoes
end
