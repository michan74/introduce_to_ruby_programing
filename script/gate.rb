class Gate
    STATIONS = [:umeda, :juso, :mikuni]
    FARES = [160, 190]

    def initialize(name)
        @name = name
    end

    def enter(ticket)
        ticket.stamp(@name)
    end

    def exit(ticket)
        fare = calculate_fare(ticket)
        fare <= ticket.fare
    end

    def calculate_fare(ticket)
        enter_station_number = STATIONS.index(ticket.stamped_at)
        exit_station_number = STATIONS.index(@name)

        difference = (enter_station_number - exit_station_number).abs
        FARES[difference - 1]
    end
end