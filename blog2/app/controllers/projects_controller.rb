class ProjectsController < ApplicationController

  def index
    @entries = Entry.all
  end
end