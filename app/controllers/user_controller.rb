class UserController < ApplicationController

  def show
    @array_user = User.show_user
  end

end
