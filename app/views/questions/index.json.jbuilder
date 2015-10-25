json.array! @questions do |q|
  json.extract! q, :id, :user_id, :title, :body, :username, :created_at
  json.answers q.answers, :user_id, :question_id, :body, :username, :created_at
end
