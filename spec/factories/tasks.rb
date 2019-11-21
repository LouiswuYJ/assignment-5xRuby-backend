FactoryBot.define do
  factory :task do
    sequence(:title) { |x| "task#{x}"}
    sequence(:description) { |x| "my task description#{x}" }
    start_time { "2019-11-11 16:30:08 +0800" }
    end_time { "2019-11-12 16:30:08 +0800" }
    tag_list { "aaa,bbb,ccc" }
  end
end
