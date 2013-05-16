class Carona < ActiveRecord::Base
  has_and_belongs_to_many :users
  attr_accessible :hora_ida, :hora_volta, :limite_pessoas, :valor_por_pessoa
end
