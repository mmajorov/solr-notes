class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :populate_categories

  private
  def populate_categories
    @menu_categories = Category.all.order(:title)
  end
end
