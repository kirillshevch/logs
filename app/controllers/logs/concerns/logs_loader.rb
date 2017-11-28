require 'active_support/concern'

module Logs
  module Concerns
    module LogsLoader
      extend ActiveSupport::Concern

      included do
        before_action :load_logs
        before_action :load_logs_list

        def load_logs
          file_name = params[:name] || Rails.env
          @logs = Logs::Viewer.call(file_name).read
        end

        def load_logs_list
          @log_files = Logs::Files.all
        end
      end
    end
  end
end
