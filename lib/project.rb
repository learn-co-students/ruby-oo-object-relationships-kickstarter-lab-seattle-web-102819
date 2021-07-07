class Project
    
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        arr = []
        ProjectBacker.all.each do |project_backer|
            if project_backer.project == self
            arr << project_backer.backer
            end
        end
        arr
    end

end

