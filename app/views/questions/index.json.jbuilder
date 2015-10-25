json.array! @questions do |q|
  json.extract! q, :id, :user_id, :title, :body
  json.answers q.answers, :user_id, :question_id, :body
end
