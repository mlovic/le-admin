json.array!(@students) do |student|
  json.extract! student, :id, :name, :phone, :level, :notes, :group_id
  json.url student_url(student, format: :json)
end
