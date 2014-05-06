require 'spec_helper'

describe Circlefish::Step do
  let(:payload) { File.read(File.expand_path("../../../support/fixtures/circleci_payload.json", __FILE__)) }

  describe 'parsed valid repository' do
    subject { Circlefish::Payload.new(JSON.parse(payload)).steps[2] }

    its(:name)          { should eq 'lein2 trampoline midje' }
    its("actions.size") { should eq 1 }
  end

end
