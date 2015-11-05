class WelcomeController < ApplicationController
  def index
    @trains = Train.all
  end
end
