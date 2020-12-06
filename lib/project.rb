class Project

    attr_reader :title
    
    @@all = []
        def initialize(title)
         @title = title
         save
        end

        def save
            @@all <<self
        end 
    
        def self.all
            @@all
        end

        def add_backer(backer)
            ProjectBacker.new(self, backer)
        end

        def project_backers
            ProjectBacker.all.select {|project_backer| project_backer.project ==self}
        end 

        def backers
            project_backers.map {|project_backer| project_backer.backer}
        end 
    end