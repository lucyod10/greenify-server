json.set! :user do
    json.id @user.id
    json.email @user.email
    json.name @user.name
    json.is_seller @user.is_seller
    json.admin @user.admin

    json.set! :plants do
      json.array! @plants do |p|
        json.user_id p.user_id
        json.id p.id
        json.name p.name
        json.images p.images
        json.age p.age
        json.status p.status
        json.cost p.cost
        json.worth p.worth
        json.description p.description
      end
    end

  json.set! :bookings do
    json.array! @bookings do |b|
      json.user_id b.user_id
      json.plant_id b.plant_id
      json.id b.id
      json.from b.from
      json.to b.to
      json.set! :plant do
        plant_booked = Plant.find b.plant_id
        json.id plant_booked.id
        json.name plant_booked.name
        json.images plant_booked.images
      end
    end
  end
end
