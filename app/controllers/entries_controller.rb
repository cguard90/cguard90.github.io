class EntriesController < ApplicationController
  def show
    @entry = Entry.find_by(id: params[:id])
    @title = @entry.title
  end
end