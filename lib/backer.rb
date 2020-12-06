class Backer
    
attr_reader :name

@@all = []

    def initialize(name)
     @name = name
     save
    end

    def save
        @@all <<self
    end 

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def project_backers
        ProjectBacker.all.select {|project_backer| project_backer.backer ==self}
    end 

    def backed_projects
        project_backers.map {|project_backer| project_backer.project}
     end 
end