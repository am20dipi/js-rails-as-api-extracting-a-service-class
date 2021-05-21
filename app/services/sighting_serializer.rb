class SightingSerializer
    def initialize(sighting_object)
        @sighting = sighting_object
    end
    # we define an initializer method for the class.
    # we use initialize method to set up any instance variables we want to use.
    # initialize takes in whatever variable we pass thru and stores it as an instance variable. 

    def to_serialized_json
        @sighting.to_json(:include => {
          :bird => {:only => [:name, :species]},
          :location => {:only => [:latitude, :longitude]}
        }, :except => [:updated_at])
    end
    # turns our data into JSON string
    # specifies what attributes to include 

    # these methods allow us to clean up the corresponding controller, DRY. 


end 