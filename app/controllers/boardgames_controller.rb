class BoardgamesController < ApplicationController
  before_action :authenticate_user!

  def index
    @boardgames = current_user.boardgames
  end

  def show
    @boardgame = current_user.boardgames.find(params[:id])
  end

  def create
    @boardgame = current_user.boardgames.create(boardgame_params)
    redirect_to @boardgame
  end

  def update
    @boardgame = current_user.boardgames.find(params[:id])
    @boardgame.update(boardgame_params)
    redirect_to @boardgame
  end

  def destroy
    @boardgame = current_user.boardgames.find(params[:id])
    @boardgame.destroy
  end

  private

  boardgame_params
    params.require(:boardgame).permit(:name, :description)
  end
end
