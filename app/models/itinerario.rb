class Itinerario < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :observacao, :ponto_final, :ponto_inicial
end
