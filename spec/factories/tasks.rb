FactoryBot.define do
  factory :task do
    title { "sport" }
    description { "badminton" }
    start_time { "2019-11-11 16:30:08 +0800" }
    end_time { "2019-11-12 16:30:08 +0800" }
    tag_list { "aaa,bbb,ccc" }
  end
end
