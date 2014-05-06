module Circlefish
  class Step
    include Virtus.model

    attribute :name, String
    attribute :actions, Array[Action]
  end
end
