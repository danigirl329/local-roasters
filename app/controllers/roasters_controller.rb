class RoastersController < ApplicationController
  def index
    @roasters = Roaster.all
  end

  def show
    @roaster = Roaster.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
