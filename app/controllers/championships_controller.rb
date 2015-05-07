class ChampionshipsController < ApplicationController
  before_action :set_championship, only:  [:edit, :show, :update]

  def index
    @championships = Championship.all
  end

  def new
    @championship = Championship.new
  end

  def show

  end

  def edit

  end

  def create
    @championship = Championship.new(championship_params)

    @championship.save
    render :new
  end

  def update
    @championship.update(championship_params)
    render :new
  end

  private

  def set_championship
    @championship = Championship.find(params[:id])
  end

  def championship_params
    params.require(:championship).permit(:name, :description, :birth_date, :number, :position, :picture)
  end
end
