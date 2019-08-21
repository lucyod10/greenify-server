  json.array! @comment do |c|
    json.id c.id
    json.comment c.comment
    json.rating c.rating
    json.plant_id c.plant_id

    json.set! :user do
      u = User.find c.user_id
      json.id c.user_id
      json.name u.name
      json.email u.email
      json.is_seller u.id
      json.admin u.id
    end
  end
