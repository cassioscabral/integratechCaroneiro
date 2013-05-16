class Carona < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_one :itinerario, autosave: true
  attr_accessible :hora_ida, :hora_volta, :limite_pessoas, :valor_por_pessoa
  before_create :build_itinerario
end
