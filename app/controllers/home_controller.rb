# :nodoc:
class HomeController < ApplicationController
  include SkipAuthorization
  skip_before_action :authenticate_user!

  def index; end
end
