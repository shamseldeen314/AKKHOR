class ParentsController < ApplicationController
  def index
    @parent = Parent.all
  end

  def new
    @parent = Parent.new
  end

  def create
    @parent = Parent.new(parent_params)

    if @parent.save
      redirect_to parents_path
      flash[:notice] = "Parent has been successfully added"
    else
      render new_parent_path
    end
  end

  def show
    @parent = Parent.find(params[:id])
  end

  def edit
    @parent = Parent.find(params[:id])
  end

  def update
    @parent = Parent.find(params[:id])

    if @parent.update(parent_params)
      redirect_to parent_path, notice: "Parent was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @parent = Parent.find(params[:id]).destroy!
    redirect_to parents_path, notice: "Classroom was successfully destroyed."
  end

  def parent_params
    return params.require(:parent).permit(:code, :name, :address, :gender, :religion, :phone, :email, :date_birth, :national_id, :job, :cv)
  end
end
