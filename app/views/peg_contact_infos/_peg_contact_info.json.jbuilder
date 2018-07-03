json.extract! peg_contact_info, :id, :first_name, :last_name, :title, :email, :phone, :created_at, :updated_at
json.url peg_contact_info_url(peg_contact_info, format: :json)
