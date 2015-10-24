json.answer @questions.answers do |a|
  json.extract! a, :body
end
