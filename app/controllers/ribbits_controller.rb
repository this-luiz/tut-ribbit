class RibbitsController < ApplicationController

  def create
    @ribbit = Ribbit.new(params[:ribbit])
    @ribbit.user_id = current_user.id
   
    if @ribbit.save
      redirect_to current_user 
    else
      flash[:error] = "Problem!"
      redirect_to current_user
    end
  end

  def index
    @ribbits = Ribbit.all include: :user  # busca todos os ribbits e os seus usuarios
    @ribbit = Ribbit.new    # cria um ribbit novo em branco
  end
end
