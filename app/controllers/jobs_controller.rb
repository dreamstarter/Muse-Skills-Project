class JobsController < ApplicationController
  before_action :find_job, only: [:show]

  def index
    @jobs = Job.order("created_at DESC")
  end

  def show
  end
  
  private

    def find_job
      @job = Job.find(params[:id])
    end
end
