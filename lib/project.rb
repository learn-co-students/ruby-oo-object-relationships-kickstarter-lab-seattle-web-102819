class Project

    attr_reader :title

def initialize(title)
    @title = title
end

def add_backer(backer)

    ProjectBacker.new(self, backer)
end

def backers
    ProjectBacker.all.select do |n|
        n.project == self
    end.map do |n|
        n.backer
    end
end

end 