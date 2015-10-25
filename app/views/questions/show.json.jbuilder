json.extract! @question, :title, :username, :category, :body
json.answer @questions.answers do |a|
  json.extract! a, :body
end
