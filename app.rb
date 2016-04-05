require_relative 'lib/file_reader.rb'
require_relative 'lib/user_counting_pending_messages'

reader = FileReader.new
data = reader.load('sample.log')

user_counting_pending_messages = UserCountingPendingMessages.new
user_counting_pending_messages.analysis(data)
