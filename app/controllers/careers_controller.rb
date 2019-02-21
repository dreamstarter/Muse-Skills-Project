class CareersController < ApplicationController

  def index
    @postings = Career.new.postings
    render json: @postings, status: :ok
  rescue StandardError => e
    render json: { errors: e.message }, status: :unprocessable_entity
  end

end
