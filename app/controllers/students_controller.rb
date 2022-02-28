class StudentsController < ApplicationController

  def index
    if params[:name]
      student = Student.all.select{ |student| student.first_name.downcase == params[:name].downcase || student.last_name.downcase == params[:name].downcase  }
      render json: student
    else
      students = Student.all
      render json: students
    end
  end

  def by_id
    student = Student.find(params[:id])
    render json: student
  end

end
