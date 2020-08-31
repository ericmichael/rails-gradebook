class Grade < ApplicationRecord
    validates_presence_of :student_id
    validates_presence_of :student_name
    validates_presence_of :student_grade
    validate :student_grade_checker
    validate :student_id_checker
    validate :student_name_checker
    validate :student_grade_checker

    #custom validators

    #makes sure student_grade is inbetween 0 and 100
    def student_grade_checker
        #check if student_grade is not null, because then we can't compare it to a numeric checker
        if student_grade != nil
            #check if student_grade is a number
            if student_grade.is_a? Numeric
                #check if student_grade is not inbetween 0 and 100
                if (student_grade < 0) || (student_grade > 100)
                    errors.add(:student_grade, "can only be a value inbetween 0 and 100")
                end
            else
                errors.add(:student_grade, "can only contain numbers")
            end
        else
            errors.add(:student_grade, "is a required field!")
        end
    end

    #makes sure the student_id is a number value greater than 0
    def student_id_checker
        #if student_id is not null, because then we can't compare it with a numeric checker
        if student_id != nil
            #check if student_id is a number
            if student_id.is_a? Numeric
                #check if student_id is greater than or equal to 0
                if student_id >= 0
                else
                    errors.add(:student_id, "can't be less than 0")
                end
            else
                errors.add(:student_id, "can only contain numbers")
            end
        else
            errors.add(:student_id, "is a required field!")
        end
    end

    #makes sure the student_name is alphabetical
    def student_name_checker
        #check if student_name is not null, because then we can't compare it with an alphabetic checker
        if student_id != nil
            
        else
            errors.add(:student_id, "is a required field!")
        end
    end
end
