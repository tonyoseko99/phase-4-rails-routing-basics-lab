class StudentsController < ApplicationController
    # create index action
    def index
        # return all students and render as json
        @students = Student.all
        render json: @students
    end

    # create grades action
    def grades
        # return all students ordered by grade in descending order and render as json
        @students = Student.order(grade: :desc)
        render json: @students
    end

    # create highest-grade action
    def highest_grade
        # return the one student with the highest grade and render as json
        @student = Student.order(:grade).last
        render json: @student
    end
end
