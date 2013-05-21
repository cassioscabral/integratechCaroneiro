class HomeController < ApplicationController

  def index
    @usuario_logado = current_user
  end
  
end
