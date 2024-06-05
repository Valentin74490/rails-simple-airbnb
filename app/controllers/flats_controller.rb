class FlatsController < ApplicationController

  before_action :set_flat, only:[:show, :index, :edit, :destroy, :update]
  
  def index
    @flats = Flat.all
  end

  def new
    @flats = Flat.new
  end

  def show
  end

def edit
end

def update

end

  def create
    @flats = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path
    else
      render:new
    end
  end

  def destroy

  end


  private

  def flat_params
    params.require(:flat).permit(:name, :description, :price_per_night, :number_of_guests)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end





end
