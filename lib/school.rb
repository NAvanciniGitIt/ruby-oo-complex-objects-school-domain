# code here!
class School
    attr_accessor(:name, :roster)
    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade]||=[]
        @roster[grade] << name
    end
    def grade(name)
        return roster[name]
    end
    
    def sort
        students = {}
        roster.each do |grade, name|
            students[grade] = (name.sort)
        end
        students
    end
end