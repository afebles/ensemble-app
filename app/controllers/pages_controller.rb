class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @musicians = User.all.sample(3)
    @projects = Project.all.sample(2)

  end
end
