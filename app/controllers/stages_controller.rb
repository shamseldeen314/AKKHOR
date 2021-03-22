class StagesController < ApplicationController
  def index
    @stages = Stage.all
  end

  # def new
  #   @stage = Stage.new
  # end

  # def create
  #   @stage = Stage.new
  #   @stage.attributes = stage_params
  #   if @stage.save
  #     redirect_to stages_path
  #   else
  #     render :new
  #   end
  # end

  def show
    @stage = Stage.find(params[:id])
  end

  def edit
    @stage = Stage.find(params[:id])
  end

  def update
    stage = Stage.find(params[:id])
    if stage.update(stage_params)
      redirect_to stages_path, notice: "Stage was successfully updated."
    else
      render :edit
    end
  end

  # def destroy
  #   stage = Stage.find(params[:id])
  #   if stage.destroy
  #     flash[:notice] = "The parent has been deleted"
  #   else
  #     flash[:error] = "Your patient has been deleted"
  #   end

  #   redirect_to stages_path
  # end

  def stage_params
    return params.require(:stage).permit(:name)
  end
end
