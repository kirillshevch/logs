require 'active_support/concern'

module Logs
  module Concerns
    module Pagination
      extend ActiveSupport::Concern

      PER_PAGE = 50
      PAGE = 1

      included do
        before_action :rendered_logs

        def rendered_logs
          @per_page = (params[:per_page] || PER_PAGE).to_i
          @page = (params[:page] || PAGE).to_i
          file_name = params[:name] || Rails.env
          range = (@page - 1) * @per_page..@per_page * @page - 1
          @rendered_logs = Logs::Viewer.call(file_name).readlines[range].join
          @pages = @logs.each_line.count / @per_page
        end
      end
    end
  end
end
