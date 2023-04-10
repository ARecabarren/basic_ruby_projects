module Towable
    def can_tow?(pounds)
        pounds < 2000
    end
end

class Vehicle
    @@number_of_vehicules = 0
    
    attr_accessor :color
    attr_reader :year, :model, :current_speed

    def initialize(year, color, model)
        @year = year
        @color = color
        @model = model
        @current_speed = 0
        @@number_of_vehicules += 1
    end

    def self.number_of_vehicules
        puts "This program has created #{@@number_of_vehicles} vehicles"
    end

    def self.gas_mileage(liters, kilometers)
        puts "#{kilometers/liters} kilometers per gas liter"
    end

    def speed_up
        @current_speed += 10
        "Current speed: #{current_speed}"
    end

    def brake
        @current_speed -= 10
        "Current speed: #{current_speed}"
    end

    def shut_off
        current_speed == 0 ?(puts "Brrrrrrrr... Engine OFF") : (puts "Reduce speed first, push the break")
    end

    def spray_paint(new_color)
        self.color = new_color
        "Your new #{new_color} tone is A M A Z I N G"
    end

    def age
        "Your #{self.model} is #{years_old} years old."
    end
    
    private
    def years_old
        Time.now.year - self.year
    end

end


class MyCar < Vehicle
    NUMBERS_OF_DOORS = 4

    def  to_s
        puts " My car is a nice #{year} #{model} in #{color}"
    end
end

class MyTruck < Vehicle
    include Towable
    NUMBERS_OF_DOORS = 2

    def to_s
        puts "My truck is a powerfull #{year} #{model} in #{color}"
    end

end

# puts MyCar.ancestors
# puts MyTruck.ancestors
# puts Vehicle.ancestors


puts lumina = MyCar.new(1997, 'chevy lumina', 'white')
puts lumina.age
puts lumina.speed_up
puts lumina.current_speed
puts lumina.speed_up
puts lumina.current_speed
puts lumina.brake
puts lumina.current_speed
puts lumina.brake
puts lumina.current_speed
puts lumina.shut_off
# MyCar.gas_mileage(13, 351)
# lumina.spray_paint("red")
# puts lumina
# puts MyCar.ancestors
# puts MyTruck.ancestors
# puts Vehicle.ancestors

# chinito = MyCar.new(2001,'White', 'DFM')
# puts chinito.speed_up
# puts chinito.shut_off
# puts chinito.brake
# puts chinito.shut_off
# puts chinito.color
# puts chinito.spray_paint('grey')
# puts chinito.to_s