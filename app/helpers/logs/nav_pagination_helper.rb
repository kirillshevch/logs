module Logs
  module NavPaginationHelper
    def pages_range
      if first_range.include? @page
        @pages.times.map { |i| i + 1 }[first_range]
      elsif last_range.include? @page
        (@pages+1).times.map { |i| i }[last_range]
      else
        (@pages).times.map { |i| i }[@page-1..@page+8]
      end
    end

    def last_range
      @pages-9..@pages
    end

    def first_range
      0..9
    end
  end
end
