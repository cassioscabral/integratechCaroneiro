class Itinerario < ActiveRecord::Base
  belongs_to :carona
  attr_accessible :latitude, :longitude, :observacao, :ponto_final, :ponto_inicial
end
