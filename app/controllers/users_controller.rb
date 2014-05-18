class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
   
    if @user.save  # redireciona para a url que exibe o user
      redirect_to @user, notice: "Thank you for signing up for Ribbit!"
    else           # ou redirecina para /users/new e exibe os erros. O formulario eh populado com os valores anteriores.
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
end
