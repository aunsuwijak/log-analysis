require_relative 'lib/file_reader.rb'
require_relative 'lib/user_counting_pending_messages'
require_relative 'lib/user_get_messages'
require_relative 'lib/user_get_friends_progress'
require_relative 'lib/user_get_friends_score'
require_relative 'lib/user_post'

reader = FileReader.new
data = reader.load('sample.log')

user_counting_pending_messages = UserCountingPendingMessages.new
user_counting_pending_messages.analysis(data)

user_get_message = UserGetMessage.new
user_get_message.analysis(data)

user_get_friends_progress = UserGetFriendsProgress.new
user_get_friends_progress.analysis(data)

user_get_friends_score = UserGetFriendsScore.new
user_get_friends_score.analysis(data)

user_post = UserPost.new
user_post.analysis(data)
