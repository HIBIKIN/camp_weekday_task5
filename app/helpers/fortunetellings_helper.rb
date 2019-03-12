module FortunetellingsHelper

  #今日が誕生日ならtrue
  def birthday?(date)
    date[4,4] == Date.today.strftime("%m%d")
  end
end
