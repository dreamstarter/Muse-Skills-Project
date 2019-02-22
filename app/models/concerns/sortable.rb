module Sortable

  module InstanceMethods
    def posting_date
      self.created_at.strftime("%b %d, %Y")
    end
  end

end