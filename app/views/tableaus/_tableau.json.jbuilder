json.extract! tableau, :id, :entreprise, :string, :nom, :email, :numero, :created_at, :updated_at
json.url tableau_url(tableau, format: :json)
