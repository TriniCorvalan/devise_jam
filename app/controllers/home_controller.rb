class HomeController < ApplicationController
  def index
    @stories = current_user.stories
  end

  def show
    @user = current_user
  end

end
