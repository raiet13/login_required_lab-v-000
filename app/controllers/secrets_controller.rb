class SecretsController < ApplicationController

  def index
    if !logged_in?
      redirect_to '/login'
    end
    # puts "logged in"
  end

  def show
    if logged_in?
      # puts "show secret"
      render :secret
    else
      redirect_to '/login'
    end
  end


  private

  def logged_in?
    if !session[:name]
      # puts "login failed"
      allow_login = false
    else
      allow_login = true
    end
  end


end
