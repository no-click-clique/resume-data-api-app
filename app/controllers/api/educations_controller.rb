class Api::EducationsController < ApplicationController
  before_action :authenticate_student

  def create
    @education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
      student_id: current_student.id 
      )
    if @education.save
      render "show.json.jb"
    else
      render json: {errors: @education.errors.full_messages}, status: 422
    end
  end

  def update
    @education = Education.find_by(id: params[:id])
    if current_student.id == @education.student_id
      @education.start_date = params[:start_date] || @education.start_date
      @education.end_date = params[:end_date] || @education.end_date
      @education.degree = params[:degree] || @education.degree
      @education.university_name = params[:university_name] || @education.university_name
      @education.details = params[:details] || @education.details
     
      if @education.save
        render "show.json.jb"
      else
        render json: {errors: @education.errors.full_messages}, status: 422
      end
    else
      render json: {error: "Education can only be edited by original owners."}, status: :unauthorized
    end  
  end

  def destroy
    education = Education.find_by(id: params[:id])
    if current_student.id == education.student_id
      education.destroy
      render json: {message: "Education successfully destroyed!"}
    else
      render json: {error: "Education can only be deleted by original owners."}, status: :unauthorized
    end  
  end
end
