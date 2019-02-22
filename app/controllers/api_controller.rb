class ApiController < ApplicationController

  def index
    @postings = Api.new.postings
    # iterate through each result/job of the muse api
    @postings["results"].each do |post, index|
      @jobs = Job.new do |key|
        # save the company name for the current iteration
        @company = Company.new do |key|
          key.name = post["company"]["name"]
        end
        @company.save!
        # save the category name for the current iteration
        @category = Category.new do |key|
          post["categories"].each do |category|
            key.name = category["name"]
          end
        end
        @category.save!
        # save the location name for the current iteration
        @location = Location.new do |key|
          post["locations"].each do |location|
            key.name = location["name"]
          end
        end
        @location.save!
        # save the level name for the current iteration
        @level = Level.new do |key|
          post["levels"].each do |level|
            key.name = level["name"]
          end
        end
        @level.save!
        # save the remaining key to the job model for the current iteration
        key.title = post["name"]
        key.description = post["contents"]
        key.company_id = @company.id
        key.category_id = @category.id
        key.location_id = @location.id
        key.level_id = @level.id
        key.posted = post["publication_date"]
      end
      if @jobs.save
        puts "saved api data"
      else
        puts "FAILURE saving the api data"
      end
    end
  rescue StandardError => e
    format.json { render json: { errors: e.message }, status: :unprocessable_entity }
  end

end
