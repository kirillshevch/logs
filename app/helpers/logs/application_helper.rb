module Logs
  module ApplicationHelper
    def log_file
      params[:name] || Rails.env + '.log'
    end
  end
end
