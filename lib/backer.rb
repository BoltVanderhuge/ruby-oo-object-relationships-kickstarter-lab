class Backer
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        backer_projects = ProjectBacker.all.select {|project_backer| project_backer.backer == self}
        backer_projects.map {|project_backer| project_backer.project}
    end

end