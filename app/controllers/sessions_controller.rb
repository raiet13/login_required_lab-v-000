class SessionsController < ApplicationController

  def new
    puts "login page"
    render :login
  end

  def create
    # puts "params = #{params} || #{params[:name]}"
    if params[:name] && params[:name] != ""
      # puts "Name = #{params[:name]}"
      session[:name] = params[:name]
      # puts "set name : #{params[:name]} || #{session[:name]}"
      redirect_to '/'
    else
      # puts "Not Logged In Name = #{params[:name]}"
      redirect_to '/login'
    end
  end

  def destroy
    if session[:name]
      puts "destroy user name"
      session.delete :name
    end
    redirect_to '/'
  end

end
