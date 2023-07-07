class WelcomeController < ApplicationController
  def index
    cookies[:curso] = "Curso de Ruby on Rails - Jackson Pires"
    session[:curso] = "Curso de Ruby on Rails - Jackson Pires"
    @nome = params[:nome]
    @curso = params[:curso]
  end
end
