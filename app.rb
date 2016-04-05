require_relative 'lib/file_reader.rb'

reader = FileReader.new
data = reader.load('sample.log')

p data[0]
p data[0].response
