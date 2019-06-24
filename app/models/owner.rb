class Owner < ActiveRecord::Base
  has_many :pets
  
  def show_pets_as_string
    str = String.new
    self.pets.each do |pet|
      str += "|  #{pet.name}"
    end
    str
  end
end