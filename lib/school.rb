# code here!

class School
    
    attr_accessor :name, :roster

    def initialize(name, roster={})
        @name = name
        @roster = roster

    end

    def add_student(name, grade)
        @name = name
        @grade = grade
        
        if !roster[grade]
            roster[grade] = []
            roster[grade] << name
        else
            roster[grade] << name
        end 

    end


    def grade(grade)
        roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |grade_key, student_array| 
            sorted[grade_key] = student_array.sort
        end 
        sorted
    end

end
 