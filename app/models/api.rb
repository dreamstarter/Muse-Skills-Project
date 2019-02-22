class Api
  require 'certified'

  include HTTParty
  base_uri 'www.themuse.com/api/public'

  attr_reader :options
  
  def initialize
    api_key = '212387a11a87325b6364eed2b5b489146fb2e78d401db3180751703fd1824fdf'
    @options = {
      query: {
        key: api_key,
        desc: "false",
        page: rand(1..20)
      }
    }
  end

  def get_data
    self.class.get("/jobs", @options)
  end

  def postings
    if get_data.code.to_i == 200
      get_data.parsed_response
    else
      raise "error fetching data from Muse API."
    end
  end
end