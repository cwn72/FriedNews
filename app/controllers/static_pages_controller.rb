class StaticPagesController < ApplicationController
  def home
    date = Time.now
    @year = date.year
    @month = date.month
    @day = date.day
    @headlines = Headline.where(:created_at => 0.days.ago.beginning_of_day..1.days.from_now.beginning_of_day)
  end
end
