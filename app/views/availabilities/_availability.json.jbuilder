
# app/views/categories/index.json.jbuilder
json.array! @availability do |a|
  json.id a.id
  json.name a.from
  json.created_at a.to
  json.created_at a.created_at
  json.created_at a.updated_at
end
