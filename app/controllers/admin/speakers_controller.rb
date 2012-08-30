# -*- encoding : utf-8 -*-
class Admin::SpeakersController < Admin::AdminController

  menu_item :speaker

  def index
    @speakers = Speaker.all
  end

  def new
    @speaker = Speaker.new
  end

  def edit
    @speaker = Speaker.find(params[:id])
  end

  def create
    @speaker = Speaker.new(params[:speaker])

    flash[:success] = "Speaker was successfully created." if @speaker.save
    respond_with @speaker, :location => admin_speakers_path
  end

  def update
    @speaker = Speaker.find(params[:id])

    flash[:success] = "speaker was successfully updated." if @speaker.update_attributes(params[:speaker])
    respond_with @speaker, :location => admin_speakers_path
  end

  def destroy
    @speaker = Speaker.find(params[:id])
    @speaker.destroy

    flash[:success] = "speaker was successfully destroyed."
    respond_with @speaker, :location => admin_speakers_path
  end

end
