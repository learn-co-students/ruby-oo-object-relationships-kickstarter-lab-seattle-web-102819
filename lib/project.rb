class Project  

    attr_reader :title 
    attr_accessor 

    @@all = []

    def initialize(title)
        @title = title 

        @@all << self 
    end 

def add_backer(backer)
    ProjectBacker.new(self, backer)
end 

#returns an array .map of projects that 
#associated with this Project == self instance
def backers
    ProjectBacker.all.select {|p| p.project == self}.map{ |b| b.backer}
end 
    
end 