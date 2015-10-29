json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :active, :job_id
  json.url project_url(project, format: :json)
end
