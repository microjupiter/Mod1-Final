class TrainInfo
    attr_accessor :name, :route_data, :id, :direction, :time, :route

    @@all = []

    def initialize(route_data, name)
        @name = name
        self.id = route_data["nextStaId"]
        self.direction = route_data["destNm"] #station destination(end of line)
        self.time = route_data["arrT"] #yyyyMMdd HH:mm:ss
        self.route = route_data["rt"]
        @@all << self
    end

    def self.all
        @@all
    end



    def self.cta_routes
        #break down all the trains by routes
        self.all.uniq {|station| station.route}
    end

    def self.trains_arriving_at_station
        #shows all trains arriving at individual station
        stations = self.all.select {|station| station.id == id}
    end



    
end