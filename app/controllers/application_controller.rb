class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    gon.rabl
    @user = User.first ##just an example of an authorized user
    gon.rabl "app/views/users/show.json.rabl", as: "current_user"
  end
end