class Dashboard::Admin::AdminController < ApplicationController
  before_action :authenticate_manager!
  layout 'admin'

  def index
  end
end