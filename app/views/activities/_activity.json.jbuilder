json.extract! activity, :id, :name, :date, :duration, :kcal, :created_at, :updated_at
json.url activity_url(activity, format: :json)
