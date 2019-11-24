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
        ProjectBacker.all.select {|project| project.backer == self}.map {|project| project.project}
    end

    # ALTERNATIVE METHOD #1
    # def backed_projects
    #     ProjectBacker.all.select {|project| project.backer == self}
    # end.map {|project| project.project}

    # ALTERNATIVE METHOD #2
    # def backed_projects
    #     project_backers = ProjectBacker.all.select {|project| project.backer == self}
    #     project_backers.map {|project| project.project}
    # end

    # ALTERNATIVE METHOD #3
    # def backed_projects
    #     project_backers = ProjectBacker.all.select do |project|
    #         project.backer == self
    #     end
    #     project_backers.map do |project|
    #         project.project
    #     end
    # end
end