json.extract! info, :id, :entreprise, :particulier, :nom, :email, :numero, :description, :created_at, :updated_at
json.url info_url(info, format: :json)
