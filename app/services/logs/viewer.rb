module Logs
  class Viewer
    def self.call(file_name)
      File.open('log/' + file_name + '.log').read#.readlines[0..49].join
    end
  end
end
