require 'descriptive-statistics'

class UserGet

  PATH_REGEX = /\A\/api\/users\/[^\/]*\z/i
  HTTP_METHOD = 'GET'

  def analysis(logs)
    logs = logs.select { |log| log.path.match(PATH_REGEX) && (log.method == HTTP_METHOD) }
    stats = DescriptiveStatistics::Stats.new(logs.map(&:response))
    dyno_mode = DescriptiveStatistics::Stats.new(logs.map(&:dyno)).mode

    p 'GET /api/users/{user_id}'
    p "The number of times the URL was called : #{logs.size}"
    p "The mean (average) of the response time : #{stats.mean}"
    p "The median of the response time : #{stats.median}"
    p "The mode of the response time : #{stats.mode}"
    p "The \"dyno\" that responded the most : #{dyno_mode}"
  end
end
