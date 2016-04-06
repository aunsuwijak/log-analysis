require 'descriptive-statistics'

class UserGetFriendsProgress

  PATH_REGEX = /\/api\/users\/(.*)\/get_friends_progress/i

  def analysis(logs)
    logs = logs.select { |log| log.path.match(PATH_REGEX) }
    stats = DescriptiveStatistics::Stats.new(logs.map(&:response))
    dyno_mode = DescriptiveStatistics::Stats.new(logs.map(&:dyno)).mode

    p 'GET /api/users/{user_id}/get_friends_progress'
    p "The number of times the URL was called : #{logs.size}"
    p "The mean (average) of the response time : #{stats.mean}"
    p "The median of the response time : #{stats.median}"
    p "The mode of the response time : #{stats.mode}"
    p "The \"dyno\" that responded the most : #{dyno_mode}"
  end
end
