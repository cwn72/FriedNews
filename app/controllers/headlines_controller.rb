class HeadlinesController < ApplicationController

  def show
    @year = params[:year].to_i
    @month = params[:month].to_i
    @day = params[:day].to_i

    #check for invalid format here
    if( @day == 0 || @year == 0 || @month == 0 )
      respond_to do |format|
        format.html { redirect_to root_path }
        format.json {render :json => nil}
      end
      return
    end

    start_date = Date.new(@year,@month,@day).beginning_of_day
    end_date = start_date + 1.days

    @headlines = Headline.where(:created_at => start_date..end_date)

    respond_to do |format|
      format.html
      format.json{ render :json => @headlines }
    end
  end

  private

    def date_params
      params.permit(:year,:month,:day)
    end
end
