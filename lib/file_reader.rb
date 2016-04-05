require 'date'
require_relative 'log.rb'

class FileReader

  def load(path)
    data = []
    File.open(path, 'r') do |f|
      f.each_line do |line|
        data << parse_log(line)
      end
    end
    data
  end

private

  def parse_log(line)
    log = Log.new
    line.split(' ').each do |data|
      if data.include? '='
        data = data.split('=')
        log.send("#{data[0]}=", data[1])
      else
        begin
          log.created_at = Date.parse(data)
        rescue ArgumentError => e
        end
      end
    end
    log
  end
end
