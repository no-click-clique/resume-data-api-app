class Api::ExperiencesController < ApplicationController
  before_action :authenticate_student

  def create
    @experience = Experience.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
      student_id: current_student.id 
      )
    if @experience.save
      render "show.json.jb"
    else
      render json: {errors: @experience.errors.full_messages}, status: 422
    end
  end

  def show
    @experience = Experience.find(params[:id])
    render "show.json.jb"
  end

  def update
    @experience = Experience.find_by(id: params[:id])
    if current_student.id == @experience.student_id

      @experience.start_date = params[:start_date] || @experience.start_date
      @experience.end_date = params[:end_date] || @experience.end_date
      @experience.job_title = params[:job_title] || @experience.job_title
      @experience.company_name = params[:company_name] || @experience.company_name
      @experience.details = params[:details] || @experience.details
      

      if @experience.save
        render "show.json.jb" 
      else
        render json: {errors: @experience.errors.full_messages}, status: 422
      end
    else
      render json: {message: "Experience can only be edited by original owner. "}
    end  
  end

  def destroy
    experience = Experience.find_by(id: params[:id])
    if current_student.id == experience.student_id
      experience.destroy
      render json: { message: "Your work experience has been removed from the database" }
    else
      render json: {error: "Experience can only be deleted by original owner."}, status: :unauthorized
    end   
    
  end
end
