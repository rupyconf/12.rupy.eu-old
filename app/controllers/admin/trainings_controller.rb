# -*- encoding : utf-8 -*-
class Admin::TrainingsController < Admin::AdminController

  menu_item :training

  def index
    @trainings = Training.all
  end

  def new
    @training = Training.new
  end

  def edit
    @training = Training.find(params[:id])
  end

  def create
    @training = Training.new(params[:training])

    flash[:success] = "Training was successfully created." if @training.save
    respond_with @training, :location => admin_trainings_path
  end

  def update
    @training = Training.find(params[:id])

    flash[:success] = "Training was successfully updated." if @training.update_attributes(params[:training])
    respond_with @training, :location => admin_trainings_path
  end

  def destroy
    @training = Training.find(params[:id])
    @training.destroy

    flash[:success] = "Training was successfully destroyed."
    respond_with @training, :location => admin_trainings_path
  end

end
