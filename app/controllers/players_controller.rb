class PlayersController < ApplicationController
  before_action :set_player, only:  [:edit, :show, :update]

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def show

  end

  def edit

  end

  def create
    @player = Player.new(player_params)

    @player.save
    render :new
  end

  def update
    @player.update(player_params)
    render :new
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :description, :birth_date, :number, :position, :picture)
  end
end
