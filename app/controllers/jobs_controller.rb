class JobsController < ApplicationController
    def index 
        @jobs = Job.all
        @user_id = current_user.id

        if current_user.user_type == "designer"
            @amount_of_user_jobs = Job.joins(:listing).where(listings:{user_id: @user_id}).count
        else
            @amount_of_user_jobs = Job.joins(:quote).where(quotes:{printer_id: Printer.find_by_user_id(@user_id).id}).count
        end
        # byebug
    end

    def show
        id = params[:id]
        @job = Job.find(id)
    end

    def update
        # updates the listing
        @job = Job.find(params[:id])
        if @job.update(status: true, completed_at: Time.now)
            redirect_to job_path(@job)
        end
    end

end 
