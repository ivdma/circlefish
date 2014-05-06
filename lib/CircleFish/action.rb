module Circlefish
  class Action
    include Virtus.model

    attribute :bash_command,        String
    attribute :run_time_millis,     Integer
    attribute :start_time,          DateTime
    attribute :end_time,            DateTime
    attribute :name,                String
    attribute :command,             String
    attribute :exit_code,           Integer
    attribute :type,                String
    attribute :index,               Integer
    attribute :status,              String
    attribute :timedout,            Boolean
    attribute :infrastructure_fail, Boolean
    attribute :type,                String
    attribute :source,              String
    attribute :failed,              Boolean
    attribute :continue,            Boolean
    attribute :parallel,            Boolean
    attribute :messages,            Array[String]
    attribute :step,                Integer
  end
end
