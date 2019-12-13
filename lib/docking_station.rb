require_relative 'bike'

class DockingStation
    attr_reader :bike
    @bikes = []
    
    def release_bike
        fail 'No bikes available' unless @bikes
        @bikes
    end

    def dock(bike)
        fail 'Cannot dock bike' unless @bikes.nil?
       @bikes = bike
    end

    def bike
        @bikes 
    end 
end
