class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @user_id = current_user.id

    @amount_of_user_jobs =  if designer?
                              Job.joins(:listing).where(listings: { user_id: @user_id }).count
                            else
                              Job.joins(:quote).where(quotes: { printer_id: Printer.find_by_user_id(@user_id).id }).count
                            end
  end

  def show
    id = params[:id]
    @job = Job.find(id)
  end

  def update
    @job = Job.find(params[:id])

    if @job.update(status: true, completed_at: Time.now)
      redirect_to job_path(@job)
    end
  end

  private

  def designer?
    current_user.user_type == 'designer'
  end
end
