# -*- encoding : utf-8 -*-
class Admin::TeamsController < Admin::AdminController

  menu_item :team

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def edit
    @team = Team.find(params[:id])
  end

  def create
    @team = Team.new(params[:team])

    flash[:success] = "Team member was successfully created." if @team.save
    respond_with @team, :location => admin_teams_path
  end

  def update
    @team = Team.find(params[:id])

    flash[:success] = "Team member was successfully updated." if @team.update_attributes(params[:team])
    respond_with @team, :location => admin_teams_path
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy

    flash[:success] = "Team member was successfully destroyed."
    respond_with @team, :location => admin_teams_path
  end

end
