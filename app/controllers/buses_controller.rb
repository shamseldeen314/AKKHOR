class BusesController < ApplicationController
  def index
    @buss = Bus.all
  end

  def new
    @bus = Bus.new
  end

  def create
    @bus = Bus.new(bus_params)
    if @bus.save
      redirect_to buses_path, notice: "Bus was successfully created."
    else
      redirect_to new_bus_path
    end
  end

  # def show

  #     @bus = bus.find(params[:id])

  # end

  def edit
    @bus = Bus.find(params[:id])
  end

  def update
    @bus = Bus.find(params[:id])
    if @bus.update!(bus_params)
      redirect_to buses_path, notice: "bus was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @bus = Bus.find(params[:id]).destroy!
    redirect_to buses_path, notice: "bus was successfully destroyed."
  end

  def bus_params
    return params.require(:bus).permit(:model, :driver, :bus_number, :color)
  end
end
