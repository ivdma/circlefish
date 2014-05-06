require 'spec_helper'

describe Circlefish::Step do
  let(:payload) { File.read(File.expand_path("../../../support/fixtures/circleci_payload.json", __FILE__)) }

  describe 'parsed valid repository' do
    subject { Circlefish::Payload.new(JSON.parse(payload)).steps[2].actions[0] }

    its(:bash_command) { should eq 'lein2 trampoline midje' }
  end

end
