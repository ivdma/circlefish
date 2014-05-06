require 'spec_helper'

describe Circlefish::Payload do
  let(:payload) { File.read(File.expand_path("../../../support/fixtures/circleci_payload.json", __FILE__)) }

  describe 'parsed valid payload' do
    subject { described_class.new(JSON.parse(payload)) }

    its(:vcs_url)     { should eq 'https://github.com/circleci/mongofinil' }
    its(:steps)       { should be_kind_of Array }
    its("steps.size") { should be 3 }
  end
end
