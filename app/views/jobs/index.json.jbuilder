json.array!(@jobs) do |job|
  json.extract! job, :id, :user_id, :complete, :description, :job_type
  json.url job_url(job, format: :json)
end
