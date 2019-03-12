class FortunetellingsController < ApplicationController
  include FortunetellingsHelper

  def show
    date = params[:date]
    @year = date[0,4]
    @month = date[4,2]
    @day = date[6,2]
    #今日が誕生日か？
    @birthday = birthday?(date)
    
  end
end
