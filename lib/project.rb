class Project
    attr_reader :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select {|bproj| bproj.project == self}.map {|project| project.backer}
    end

    # ALTERNATIVE METHOD #1
    # def backers
    # ProjectBacker.all.select do |bproj| bproj.project == self
    # end.map {|project| project.backer}
    
    # ALTERNATIVE METHOD #2
    # def backers
    #     project_backers = ProjectBacker.all.select {|bproj| bproj.project == self}
    #     project_backers.map {|project| project.backer}
    # end

    # ALTERNATIVE METHOD #3
    # def backers
    #     project_backers = ProjectBacker.all.select do |bproj|
    #         bproj.project == self
    #     end
    #     project_backers.map do |project|
    #         project.backer
    #     end
    # end
end