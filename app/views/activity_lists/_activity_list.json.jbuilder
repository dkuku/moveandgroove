json.extract! activity_list, :id, :name, :theme, :main_image, :thumb_image, :created_at, :updated_at
json.url activity_list_url(activity_list, format: :json)
