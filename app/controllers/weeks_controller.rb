class WeeksController < ApplicationController
  before_action :authenticate_user!
before_action :set_week, only: [:show, :edit, :update, :destroy]
def index
  @weeks=Week.all
end

def show
  
end

def new
  @week=Week.new
end

def create
  @week=Week.new(week_params)
  if @week.save
    redirect_to @week,notice:'Week was successfully created'
  else
    render:new
  end
end

def update
  if @week.update(week_params)
    redirect_to @week ,notice:'Week was successfully updated.'
  else
   render:edit
  end
end 
def destroy
  @week.destroy
  redirect_to weeks_url,notice:'Week was successfully deleted.'
end

private

def set_week
  @week=Week.find(params[:id])
end

def week_params
  params.require(:week).permit(:start_date,:category_id)
end

end
