class PunchqueriesController < ApplicationController
  def new
  	@punch = Punch.new
  end

  def create
  	@punch = Punch.new(params_punch)
  	if @punch.save
  		redirect_to root_url
  	end
  end
  private
  def params_punch
  	params.require(:punch).permit(:query,:description)
  end
end
