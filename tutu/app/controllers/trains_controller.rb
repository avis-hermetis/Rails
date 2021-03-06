class TrainsController < ApplicationController
  before_action :set_train, only: [:show, :edit, :update, :destroy]

  # GET /trains
    def index
    @trains = Train.all
  end

  # GET /trains/1
  def show
  end

  # GET /trains/new
  def new
    @train = Train.new
  end

  # GET /trains/1/edit
  def edit
  end

  # POST /trains
    def create
    @train = Train.new(train_params)

    respond_to do |format|
      if @train.save
        format.html { redirect_to @train, notice: 'Train was successfully created.' }
        format.json { render :show, status: :created, location: @train }
      else
        format.html { render :new }
        format.json { render json: @train.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trains/1
   def update
    respond_to do |format|
      if @train.update(train_params)
        redirect_to @train, notice: 'Train was successfully updated.'        
      else
      render :edit   
      end
    end
  end

  # DELETE /trains/1
   def destroy
    @train.destroy   
    redirect_to trains_url, notice: 'Train was successfully destroyed.'      
    end
  end

  private
    def set_train
      @train = Train.find(params[:id])
    end

   
    def train_params
      params.require(:train).permit(:number, :current_route_id)
    end

