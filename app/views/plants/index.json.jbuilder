json.array! @plant do |p|
  json.id p.id
  json.images p.images
  json.age p.age
  json.status p.status
  json.cost p.cost
  json.worth p.worth
  json.description p.description
  json.user_id p.user_id

  availabilities = p.availabilities
  json.set! :availabilities do
    json.array! availabilities do |a|
      json.id a.id
      json.plant_id p.id
      json.from a.from
      json.to a.to
    end
  end
end
