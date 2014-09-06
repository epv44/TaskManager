json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :hours, :due_date
  json.url task_url(task, format: :json)
end
