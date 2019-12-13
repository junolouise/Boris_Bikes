require_relative 'bike'

class DockingStation
    attr_reader :bike
    
    def release_bike
        fail 'No bikes available' unless @bike
        @bike
    end

    def dock(bike)
        fail 'Cannot dock bike' unless @bike.nil?
       @bike = bike
    end

    def bike 
        @bike 
    end 
end
