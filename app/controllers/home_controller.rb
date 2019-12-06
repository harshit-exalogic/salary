class HomeController < ApplicationController
  def index
  	@user=User.all
  end
  def new
  end
  def salary_details
  end
end
