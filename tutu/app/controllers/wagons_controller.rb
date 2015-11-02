class WagonsController < ApplicationController
  before_action :set_train_from_train_id, only: [:new, :create]
  before_action :set_wagon_from_wagon_id, except: [:new, :create]
  

  def index
    @wagons = Wagon.all
  end

  def show 
  end
  
  def new    
    @wagon = @train.wagons.new
  end

  def create
    @wagon = @train.wagons.new(wagon_params)
       if @wagon.save
      redirect_to @wagon
    else
      render :new
    end
  end

  def edit    
  end

  def update
    if @wagon.update(wagon_params)
      redirect_to @wagon
    else
      render :new
    end
  end

  def destroy     
    @wagon.destroy
    redirect_to wagons_path
  end

  private

  def set_train_from_train_id
    @train = Train.find(params[:train_id])
  end

  def set_wagon_from_wagon_id
    @wagon = Wagon.find(params[:id])
  end

  def wagon_params
    params.require(:wagon).permit(:sort, :upper_places, :lower_places)
  end

end
