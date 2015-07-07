class HeadlinesController < ApplicationController

  def show
    @year = params[:year].to_i
    @month = params[:month].to_i
    @day = params[:day].to_i

    #check for invalid format here
    if( @day == 0 || @year == 0 || @month == 0 )
      redirect_to root_path
    end

    start_date = Date.new(@year,@month,@day).beginning_of_day
    end_date = start_date + 1.days

    @headlines = Headline.where(:created_at => start_date..end_date)
  end

  private

    def date_params
      params.permit(:year,:month,:day)
    end
end
