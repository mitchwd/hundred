class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(current_user)
  end

  # DELETE /users/destroy
  def destroy
    @user = User.find(current_user)
    @user.destroy
    reset_session
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'User and associated stories were successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
