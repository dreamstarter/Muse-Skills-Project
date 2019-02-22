class JobsController < ApplicationController
  before_action :find_job, only: [:show]

  def index
    @locations = Location.all.uniq(&:name)
    @categories = Category.all.uniq(&:name)
    @companies = Company.all.uniq(&:name)
    @levels = Level.all.uniq(&:name)

    # Filter by Category and Location
    if !params[:category].blank?
      @jobs = Job.by_category(params[:category]).order("created_at DESC")
      respond_to_html_and_json(@jobs)
    # Filter by Location Only
    elsif !params[:location].blank?
      @jobs = Job.by_location(params[:location]).order("created_at DESC")
      respond_to_html_and_json(@jobs)
    # Filter by Company Only
    elsif !params[:company].blank?
      @jobs = Job.by_company(params[:company]).order("created_at DESC")
      respond_to_html_and_json(@jobs)
    # Filter by Level Only
    elsif !params[:level].blank?
      @jobs = Job.by_level(params[:level]).order("created_at DESC")
      respond_to_html_and_json(@jobs)
    else
    # All Jobs
      @jobs = Job.order("created_at DESC")
      respond_to_html_and_json(@jobs)
    end

  end

  def show
  end
  
  private

    def find_job
      @job = Job.find(params[:id])
    end
end
