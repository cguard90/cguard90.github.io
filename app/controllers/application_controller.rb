class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :load_entries, :build_title

  private

  def load_entries
    @entries = Entry.all
  end

  def build_title
    unless @entry
      @title = "Welcome to my Blog"
    end
  end

end
