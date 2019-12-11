class SurveysController < ApplicationController
	before_action :set_survey, only: [:show, :edit, :update, :destroy]
  	before_action :authenticate_user!
  	
	# GET /surveys
	# GET /surveys.json
	def index
	  @surveys = Survey.all
	  @user = current_user
	end
  
	# GET /surveys/1
	# GET /surveys/1.json
	def show 
		@user = current_user
	end
  
	# GET /surveys/new
	def new
	  @survey = Survey.new
	  @survey.questions.build
	  @user = current_user
	end
  
	# GET /surveys/1/edit
	def edit
	  @survey.questions.build
	  @user = current_user
	end
  
	# POST /surveys
	# POST /surveys.json
	def create
	  @survey = Survey.new(survey_params)
	  @survey.landing_id=@survey.id
  
	  respond_to do |format|
		if @survey.save
		  format.html { redirect_to @survey, notice: 'Survey was successfully created.' }
		  format.json { render :show, status: :created, location: @survey }
		else
		  format.html { render :new }
		  format.json { render json: @survey.errors, status: :unprocessable_entity }
		end
	  end



	  @landing = Landing.new
	  @landing.survey_id = @survey.id
	  @landing.save


	end
  
	# PATCH/PUT /surveys/1
	# PATCH/PUT /surveys/1.json
	def update
	  respond_to do |format|
		if @survey.update(survey_params)
		  format.html { redirect_to @survey, notice: 'Survey was successfully updated.' }
		  format.json { render :show, status: :ok, location: @survey }
		else
		  format.html { render :edit }
		  format.json { render json: @survey.errors, status: :unprocessable_entity }
		end
	  end
	end
  
	# DELETE /surveys/1
	# DELETE /surveys/1.json
	def destroy
	  @survey.destroy
	  respond_to do |format|
		format.html { redirect_to surveys_url, notice: 'Survey was successfully destroyed.' }
		format.json { head :no_content }
	  end
	end
  
	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_survey
		@survey = Survey.find(params[:id])
	  end
  
	  # Never trust parameters from the scary internet, only allow the white list through.
	  def survey_params
		params.require(:survey).permit(:title, :user_id, questions_attributes: [:id, :_destroy, :content])
		end

		def landing_params
		params.require(:landing).permit(:survey_id)
	  end
  end