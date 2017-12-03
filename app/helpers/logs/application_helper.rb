module Logs
  module ApplicationHelper
    def log_file
      (params[:name] || Rails.env) + '.log'
    end

    def log_file_path(log_name)
      root_path + log_name
    end

    def lines(file)
      file.each_line.count.to_s
    end
  end
end
