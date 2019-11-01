require 'pry'

class Backer 

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    #accepts a project as an argument and creates a ProjectBacker, 
    #associating the project with this backer
    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    #returns an array .map of projects that associated 
    #with this Backer == self instance
    def backed_projects
        #backed_proj = []
        ProjectBacker.all.select { |pb| pb.backer == self}.map{|proj| proj.project}
    end 


end 