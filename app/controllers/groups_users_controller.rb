class GroupsUsersController < ApplicationController
  def new
    @groups_user = GroupsUser.new
  end

  def create
    @groups_user = GroupsUser.new(event_params)
    @group_user.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:groupsuser).permit(:user_id, :group_id)
  end
end
