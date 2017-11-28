require_dependency 'logs/application_controller'

module Logs
  class LogsController < ApplicationController
    include Logs::Concerns::LogsLoader
    include Logs::Concerns::Pagination

    def index; end

    def show; end
  end
end
