# -*- encoding : utf-8 -*-
class Admin::SponsorsController < Admin::AdminController

  menu_item :sponsor

  def index
    @sponsors = Sponsor.all
  end

  def new
    @sponsor = Sponsor.new
  end

  def edit
    @sponsor = Sponsor.find(params[:id])
  end

  def create
    @sponsor = Sponsor.new(params[:sponsor])

    flash[:success] = "Sponsor was successfully created." if @sponsor.save
    respond_with @sponsor, :location => admin_sponsors_path
  end

  def update
    @sponsor = Sponsor.find(params[:id])

    flash[:success] = "sponsor was successfully updated." if @sponsor.update_attributes(params[:sponsor])
    respond_with @sponsor, :location => admin_sponsors_path
  end

  def destroy
    @sponsor = Sponsor.find(params[:id])
    @sponsor.destroy

    flash[:success] = "sponsor was successfully destroyed."
    respond_with @sponsor, :location => admin_sponsors_path
  end

end
