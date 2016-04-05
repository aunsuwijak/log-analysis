require_relative 'spec_helper.rb'

describe UserGetMessage do

  describe '#analysis' do
    let(:log_1) { Fabricate(:user_get_messages_log, connect: '20', service: '20', dyno: 'web.2') }
    let(:log_2) { Fabricate(:user_get_messages_log, connect: '20', service: '10', dyno: 'web.2') }
    let(:log_3) { Fabricate(:user_get_messages_log, connect: '20', service: '10', dyno: 'web.2') }
    let(:log_4) { Fabricate(:user_get_messages_log, connect: '10', service: '20', dyno: 'web.1') }
    let(:log_5) { Fabricate(:log, connect: '20', service: '20', dyno: 'web.3') }

    subject { UserGetMessage.new }

    context 'output' do
      it do
        expect {
          subject.analysis([log_1, log_2, log_3, log_4])
        }.to output(
          [
            "\"GET /api/users/{user_id}/get_messages\"\n",
            "\"The number of times the URL was called : 4\"\n",
            "\"The mean (average) of the response time : 32.5\"\n",
            "\"The median of the response time : 30.0\"\n",
            "\"The mode of the response time : 30\"\n",
            "\"The \\\"dyno\\\" that responded the most : web.2\"\n"
          ].join
        ).to_stdout
      end
    end
  end
end
