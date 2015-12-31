class AnswersController < ApplicationController
  include AuthHelper

  before_action :set_command
  before_action :set_answer, only: [:show, :edit, :update, :destroy]
  before_action :check_authent, only: [:new, :create, :edit, :update, :destroy]

  # GET /answers
  # GET /answers.json
  def index
    @answers = Answer.where(command_id: params[:command_id]).all
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    @answer
  end

  # GET /answers/new
  def new
    @answer = Answer.new
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = @command.answers.new(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to [@command, @answer], notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to [@command, @answer], notice: 'Answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to command_answers_url, notice: 'Answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_command
    @command = Command.find(params[:command_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = @command.answers.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:nickname, :order, :amount, :payed, :command_id)
    end
end
