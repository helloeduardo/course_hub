class CoursesController < ApplicationController
  before_action :require_user

  def index
    @courses = Course.all
  end
end
