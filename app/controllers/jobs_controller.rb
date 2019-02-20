class JobsController < ApplicationController
  before_action :find_job, only: [:show]

  def index
    if params[:category].blank?
      @jobs = Job.page(params[:page]).per(25).order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @jobs = Job.where(category_id: @category_id).page(params[:page]).per(25).order("created_at DESC")
    end
  end

  def show
  end
  
  private

    def find_job
      @job = Job.find(params[:id])
    end
end
