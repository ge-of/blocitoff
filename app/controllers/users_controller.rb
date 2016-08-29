class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @todo = @user.todos
  end
end
