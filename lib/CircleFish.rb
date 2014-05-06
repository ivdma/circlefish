require 'virtus'

require 'circlefish/action'
require 'circlefish/step'
require 'circlefish/payload'
require 'circlefish/version'

module Circlefish
  def self.from_json(payload)
    hash = JSON.parse(payload)['payload']
    Circlefish::Payload.new(hash)
  end
end
