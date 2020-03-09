class Api::StudentsController < ApplicationController
  before_action :authenticate_student, only: [:create, :update, :destroy]

  def index
    @students = Student.all
    render "index.json.jb"
  end

  def create
    @student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      website_url: params[:website_url],
      online_resume_url: params[:online_resume_url],
      github_url: params[:github_url],
      photo: params[:photo],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if @student.save
      render "show.json.jb"
    else
      render json: {errors: @student.errors.full_messages}, status: 422 
    end 
    
  end

  def show
    @student = Student.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @student = Student.find_by(id: params[:id])
    if current_student.id == @student.id
      if params[:password]
        @student.password = params[:password]
      end
      @student.first_name = params[:first_name] || @student.first_name
      @student.last_name = params[:last_name] || @student.last_name
      @student.email = params[:email] || @student.email
      @student.phone_number = params[:phone_number] || @student.phone_number
      @student.short_bio = params[:short_bio] || @student.short_bio
      @student.linkedin_url = params[:linkedin_url] || @student.linkedin_url
      @student.twitter_handle = params[:twitter_handle] || @student.twitter_handle
      @student.website_url = params[:website_url] || @student.website_url
      @student.online_resume_url = params[:online_resume_url] || @student.online_resume_url
      @student.github_url = params[:github_url] || @student.github_url
      @student.photo = params[:photo] || @student.photo

      if @student.save
        render "show.json.jb"
      else
        render json: {errors: @student.errors.full_messages}, status: 422
      end
    else
      render json: {error: "Student information can only be edited by original student."}, status: :unauthorized

    end  
    
  end

  def destroy
    student = Student.find_by(id: params[:id])
    if current_student.id == student.id
      student.destroy
      render json: {message: "Your student information has been removed from the database"}
    else
      render json: {error: "Student information can only be deleted by original student."}, status: :unauthorized
    end  
    
  end
end
