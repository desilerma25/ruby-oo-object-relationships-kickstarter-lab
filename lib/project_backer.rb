# each inst, of PB will rep an assoc. beteen a single back & single proj.
# PB belongs to one Backer & one Project
# PB acts as a join between the 2
# allows us to maintain the has many/has many relationship the 2 have

class ProjectBacker

    attr_accessor :project, :backer

    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end
    
end 
