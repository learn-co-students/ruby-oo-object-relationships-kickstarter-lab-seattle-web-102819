require 'pry'


class Backer

    attr_reader :name

def initialize(name)
    @name = name
end

def back_project(project)

    ProjectBacker.new(project,self)
end

def backed_projects

a = ProjectBacker.all.select do |n|
    n.backer == self
    end
a.map do |n|
    n.project
    end
end




end