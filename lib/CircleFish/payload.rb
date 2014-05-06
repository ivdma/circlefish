module Circlefish
  class Payload
    include Virtus.model

    attribute :vcs_url,           String
    attribute :build_url,         String
    attribute :build_num,         Integer
    attribute :branch,            String
    attribute :vcs_revision,      String
    attribute :commiter_name,     String
    attribute :commiter_email,    String
    attribute :subject,           String
    attribute :body,              String
    attribute :why,               String
    attribute :dont_build,        String
    attribute :queued_at,         DateTime
    attribute :start_time,        DateTime
    attribute :stop_time,         DateTime
    attribute :build_time_millis, Integer
    attribute :username,          String
    attribute :reponame,          String
    attribute :lifecycle,         String
    attribute :outcome,           String
    attribute :status,            String
    attribute :retry_of,          Integer
    attribute :steps,             Array[Step]
  end
end
