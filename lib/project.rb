class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        # takes in Backer inst. & creates a PB using
        # the Backer inst. and the current Proj. inst.
        # call on PB and assign ourself as the project
        ProjectBacker.new(self, backer)
    end

    def backers
        #inst. met that rtns all the backer. assoc. w. this Proj.
        # * since back. inst. are not direct. assoc. w/ Proj inst.
        # you need to get this info through PB class
        project_backers = ProjectBacker.all.select {|pb| pb.project == self}
        project_backers.collect {|pb| pb.backer}
        # new vari to hold returned array
        # iterate through PB to go through all & select projects that match w. ourself
        # then iter. through that vari. and collect our backers listed 
    end

end