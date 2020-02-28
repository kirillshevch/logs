module Logs
  class LogFiles
    def self.all
      files = ::FileList.new('log/*') { |f| f }
      files.map { |f| f.split('log/')[1] }
    end
  end
end
