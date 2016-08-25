class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride
    #has enough tickets  && is tall enough
    if self.user.tickets > self.attraction.tickets && self.user.height > self.attraction.min_height
      ## YAY!!!
      Ride.create(user_id: self.user.id, attraction_id: self.attraction.id)
      self.user.tickets-=self.attraction.tickets
      self.user.nausea+=self.attraction.nausea_rating
      self.user.happiness+=self.attraction.happiness_rating
      #elsif not tall enough
   elsif self.user.tickets > self.attraction.tickets
      "Sorry. You are not tall enough to ride the #{self.attraction.name}."
      #not enough tickets
    elsif self.user.height > self.attraction.min_height
      "Sorry. You do not have enough tickets the #{self.attraction.name}."
    else
      "Sorry. You do not have enough tickets the #{self.attraction.name}. You are not tall enough to ride the #{self.attraction.name}."
    end
  end

end
