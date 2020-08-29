class GradesController < ApplicationController
  before_action :set_grade, only: [:show, :edit, :update, :destroy]

  # GET /grades
  def index
    if !user_signed_in?
      redirect_to user_session_path
    end
  end

  # GET /grades/1
  def show
    if user_signed_in?
      redirect_to grades_url
    else
      redirect_to new_user_session_path
    end
  end

  # GET /grades/new
  def new
    if user_signed_in?
      @grade = Grade.new
    else
      redirect_to new_user_session_path
    end
  end

  # GET /grades/1/edit
  def edit
    # @grade = Grade.find(params[:id])
    if user_signed_in?
      #proceed
    else
      redirect_to new_user_session_path
    end
  end

  # POST /grades
  def create
    @grade = Grade.new(grade_params)

    if @grade.save
      redirect_to @grade, notice: 'Grade was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /grades/1
  def update
    # if user is signed in, then they can update grade
    # else, redirect to sign-in page
    if user_signed_in?
      if @grade.update(grade_params)
        redirect_to @grade, notice: 'Grade was successfully updated.'
      else
        render :edit
      end
    else 
      redirect_to new_user_session_path
    end
  end

  # DELETE /grades/1
  def destroy
    
    @grade.destroy
    redirect_to grades_url, notice: 'Grade was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grade_params
      params.require(:grade).permit(:student_id, :student_name, :student_grade)
    end
end
