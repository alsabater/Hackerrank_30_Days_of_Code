class Student
    def initialize(firstName,lastName,phone)
        @firstName=firstName
        @lastName=lastName
        @phone=phone
    end
    def display()
        print("First Name: ",@firstName,"Last Name: ",@lastName+"Phone: ",@phone)
    end
end

class Grade <Student
	def initialize (firstName,lastName,phone,score)
		super(firstName,lastName,phone)
		@score = score.to_f
	end
    def calculate
        case @score
        when 0...40
            return "D"
        when 40...60
        	return "B"
        when 60...75
        	return "A"
        when 75...90
        	return "E"
        when 90..100
        	return "O"
        end
    end
end

firstName=gets
lastName=gets
phone=gets.to_i
score=gets.to_i
g=Grade.new(firstName,lastName,phone,score)
g.display           
print("\nGrade: ",g.calculate)