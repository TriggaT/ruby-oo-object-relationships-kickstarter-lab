class Project

    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title 
        @@all << self
    end 
   
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
        backers = ProjectBacker.all.select do |backer| 
        backer.project == self
        end 
        backers.map do |b|
            b.backer
        end 
    end


end 
