class SemestersController < ApplicationController
  before_action :set_semester, only: %i[show edit update destroy]

  def index
    @semesters = Semester.all
  end

  def show; end

  def new
    @semester = Semester.new
  end

  def edit; end

  def create
    @semester = Semester.new(semester_params)

    respond_to do |format|
      if @semester.save
        format.html { redirect_to @semester, notice: 'Semester was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @semester.update(semester_params)
        format.html { redirect_to @semester, notice: 'Semester was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @semester.destroy
    respond_to do |format|
      format.html { redirect_to semesters_url, notice: 'Semester was successfully destroyed.' }
    end
  end

  private

  def set_semester
    @semester = Semester.find(params[:id])
  end

  def semester_params
    params.require(:semester).permit(:name, :current, :user_id)
  end
end
