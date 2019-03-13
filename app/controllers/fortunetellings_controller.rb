class FortunetellingsController < ApplicationController
  include FortunetellingsHelper

  def show
    date = params[:date]
    @year = date[0, 4]
    @month = date[4, 2]
    @day = date[6, 2]
    #今日が誕生日か？
    @birthday = birthday?(date)
    #星座のやつ
    @constellation = constellation(@month, @day)
    #年齢
    @age = (Date.today.strftime("%Y%m%d").to_i - date.to_i) / 10000
    #おみくじのやつ
    @fortune = %w(大吉 中吉 吉 小吉 凶 大凶).sample
  end

end
