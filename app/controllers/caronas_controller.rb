class CaronasController < ApplicationController
  before_filter :authenticate_user!
  # GET /caronas
  # GET /caronas.json
  def index
    @caronas = Carona.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @caronas }
    end
  end

  # GET /caronas/1
  # GET /caronas/1.json
  def show
    @carona = Carona.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @carona }
    end
  end

  # GET /caronas/new
  # GET /caronas/new.json
  def new
    @carona = Carona.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @carona }
    end
  end

  # GET /caronas/1/edit
  def edit
    @carona = Carona.find(params[:id])
  end

  # POST /caronas
  # POST /caronas.json
  def create
    @carona = Carona.new(params[:carona])

    respond_to do |format|
      if @carona.save
        format.html { redirect_to @carona, notice: 'Carona was successfully created.' }
        format.json { render json: @carona, status: :created, location: @carona }
      else
        format.html { render action: "new" }
        format.json { render json: @carona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /caronas/1
  # PUT /caronas/1.json
  def update
    @carona = Carona.find(params[:id])

    respond_to do |format|
      if @carona.update_attributes(params[:carona])
        format.html { redirect_to @carona, notice: 'Carona was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @carona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caronas/1
  # DELETE /caronas/1.json
  def destroy
    @carona = Carona.find(params[:id])
    @carona.destroy

    respond_to do |format|
      format.html { redirect_to caronas_url }
      format.json { head :no_content }
    end
  end
end
