require_relative 'spec_helper.rb'

describe Log do

  describe '#response' do
    let(:log) { Fabricate(:log, connect: '20', service: '20') }
    subject { log.response }

    context 'connect + service' do
      it { is_expected.to eq 40 }
    end
  end
end
