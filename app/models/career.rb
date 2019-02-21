class Career
  require 'certified'
  
  include HTTParty
  base_uri 'www.themuse.com/api/public'

  attr_reader :options
  
  def initialize
    api_key = ''
    @options = {
      query: {
        key: api_key,
        sign: "true",
        desc: "true",
        page: 1
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