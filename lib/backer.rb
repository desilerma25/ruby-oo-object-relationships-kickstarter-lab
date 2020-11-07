class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        # takes in a proj. instance
        # this met. should create a ProjectBacker inst. using the provided
        # Project inst. & the curr. Backer inst. (the inst met. we called on)
        ProjectBacker.new(project, self) 
        # this puts the backer inst. (self) as the backer for the provided proj.
    end

    def backed_projects
        #inst. met that rtns all the projs. assoc. w. this Backer
        # * since proj. inst. are not direct. assoc. w/ Backer inst.
        # you need to get this info through PB class
        # need to iterate through proects to match backers with self
        # new vari., iter. to select which proj. have you listed as backer
        # iterate through the projects & collect the ones that have you as backer.
        projects_backed = ProjectBacker.all.select {|pb| pb.backer == self}
        projects_backed.collect {|pb| pb.project}
        # new vari. for new array, iter. through all to select which proj. have you listed as backer
        # iterate through the new array & collect the projects only.
    end

end
