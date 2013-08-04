class HomeController < ApplicationController
  def index
    redirect_to tasks_path and return if current_user.present?
  end
end
