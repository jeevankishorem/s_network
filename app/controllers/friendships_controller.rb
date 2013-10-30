class FriendshipsController < ApplicationController


  def create
    @user = User.find(params[:friendship][:friend_id])
    current_user.sender!(@user)
    redirect_to :back
  end

  def destroy
    @user = Friendship.find(params[:id]).friend
    current_user.unfriend!(@user)
    redirect_to :back
  end
end