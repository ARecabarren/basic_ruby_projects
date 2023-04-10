class MyCar
    attr_accessor :color
    attr_reader :year
    attr_reader :current_speed

    def initialize(year, color, model)
        @year = year
        @color = color
        @model = model
        @current_speed = 0
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


end


chinito = MyCar.new(2001,'White', 'DFM')
puts chinito.speed_up
puts chinito.shut_off
puts chinito.brake
puts chinito.shut_off
puts chinito.color
puts chinito.spray_paint('grey')