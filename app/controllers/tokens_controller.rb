class TokensController < ApplicationController
  before_filter :authenticate_user!
  #before_action :set_token, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  # GET /tokens
  # GET /tokens.json
  def index
    @tokens = Token.all.page(params[:page]).per(10)
  end

  # GET /tokens/1
  # GET /tokens/1.json
  def show
  end

  # GET /tokens/new
  def new
    #@token = Token.new
  end

  # GET /tokens/1/edit
  def edit
  end

  # POST /tokens
  # POST /tokens.json
  def create
    #@token = Token.new(token_params)
    if(@token.is_new_application)
      @new_application = Application.new(:name => @token.name, :relation_name => @token.relation_name);
      @new_application.save!
      @token.application_id = @new_application.id
    end
     
    respond_to do |format|
      if @token.save
        format.html { redirect_to @token, notice: 'Token was successfully created.' }
        format.json { render :show, status: :created, location: @token }
      else
        format.html { render :new }
        format.json { render json: @token.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tokens/1
  # PATCH/PUT /tokens/1.json
  def update
    respond_to do |format|
      if @token.update(token_params)
        format.html { redirect_to @token, notice: 'Token was successfully updated.' }
        format.json { render :show, status: :ok, location: @token }
      else
        format.html { render :edit }
        format.json { render json: @token.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tokens/1
  # DELETE /tokens/1.json
  def destroy
    @token.destroy
    respond_to do |format|
      format.html { redirect_to tokens_url, notice: 'Token was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_token
    #   @token = Token.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def token_params
      params.require(:token).permit(:name, :relation_name, :doctor, :is_new_application, :application_id, :is_active, :staff1, :staff2, :is_staff2_involved, :status)
    end
end
