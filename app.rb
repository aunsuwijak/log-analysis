require_relative 'lib/file_reader.rb'
require_relative 'lib/user_counting_pending_messages'
require_relative 'lib/user_get_messages'

reader = FileReader.new
data = reader.load('sample.log')

user_counting_pending_messages = UserCountingPendingMessages.new
user_counting_pending_messages.analysis(data)

user_get_message = UserGetMessage.new
user_get_message.analysis(data)
