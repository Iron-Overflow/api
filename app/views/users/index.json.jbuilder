json.array! @users do |u|
  json.id u.id
  json.username u.username
  json.password u.password_digest
  json.created_at u.created_at
  json.questions u.questions
  json.answers u.answers
end
