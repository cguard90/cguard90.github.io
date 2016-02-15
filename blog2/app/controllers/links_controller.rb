class LinksController < ApplicationController

  def index
    @entries = Entry.all
  end

end