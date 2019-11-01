class Backer

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        arr = []
        ProjectBacker.all.each do |project_backer|
            if project_backer.backer == self
            arr << project_backer.project
            end
        end
        arr
    end

    

end