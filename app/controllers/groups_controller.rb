class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = policy_scope(Group)
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
    authorize @group
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    if @group.save
      if !params[:users].nil?

        # iterate through the users to create a group user for every single username
        params[:users].each do |userid|
          user = User.find(userid)
          # raise
          GroupsUser.create!(user: user, group: @group)
        end
      end
      GroupsUser.create!(user: current_user, group: @group)
      authorize @group
      redirect_to challenges_path
    else
      render :new
    end
  end

def edit
end

def update
  @group.update(group_params)
  if !params[:users].nil?
    params[:users].each do |userid|
      user = User.find(userid)

        # raise
        GroupsUser.create!(user: user, group: @group)
      end
    end

    redirect_to group_path(@group)
  end

  def destroy
    @group.destroy
    redirect_to challenges_path
  end

  private

  def set_group
    @group = Group.find(params[:id])
    authorize @group
  end

  def group_params
    params.require(:group).permit(:name, :photo)
  end
end
