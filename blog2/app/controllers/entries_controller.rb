class EntriesController < ApplicationController
  def show
    @entries = Entry.all
    @entry = Entry.find_by(id: params[:id])
  end
end