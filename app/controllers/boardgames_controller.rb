class BoardgamesController < ApplicationController
  before_action :authenticate_user!

  def index
    @boardgames = current_user.boardgames
  end

  def show
    @boardgame = current_user.boardgames.find(params[:id]) # remove
  end

  def new
    @boardgame = Boardgame.new
  end

  def create
    @boardgame = current_user.boardgames.create(boardgame_params)
    redirect_to @boardgame
  end

  def edit
    @boardgame = current_user.boardgames.find(params[:id])
  end

  def update
    boardgame.update(boardgame_params)
    redirect_to boardgame
  end

  def destroy
    boardgame.destroy
    redirect_to boardgames_path
  end

  def bgg_import
    current_user.import_boardgames(params[:bgg_username])
    redirect_to boardgames_path
  end

  private

  def boardgame
    @boardgame ||= current_user.boardgames.find(params[:id])
  end

  def boardgame_params
    params.require(:boardgame).permit(:name, :year_published, :image_url, :description, :min_players, :max_players, :min_playing_time, :max_playing_time, :min_age)
  end
end
