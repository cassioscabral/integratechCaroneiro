class ItinerariosController < ApplicationController
  # GET /itinerarios
  # GET /itinerarios.json
  def index
    @itinerarios = Itinerario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @itinerarios }
    end
  end

  # GET /itinerarios/1
  # GET /itinerarios/1.json
  def show
    @itinerario = Itinerario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @itinerario }
    end
  end

  # GET /itinerarios/new
  # GET /itinerarios/new.json
  def new
    @itinerario = Itinerario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @itinerario }
    end
  end

  # GET /itinerarios/1/edit
  def edit
    @itinerario = Itinerario.find(params[:id])
  end

  # POST /itinerarios
  # POST /itinerarios.json
  def create
    @itinerario = Itinerario.new(params[:itinerario])

    respond_to do |format|
      if @itinerario.save
        format.html { redirect_to @itinerario, notice: 'Itinerario was successfully created.' }
        format.json { render json: @itinerario, status: :created, location: @itinerario }
      else
        format.html { render action: "new" }
        format.json { render json: @itinerario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /itinerarios/1
  # PUT /itinerarios/1.json
  def update
    @itinerario = Itinerario.find(params[:id])

    respond_to do |format|
      if @itinerario.update_attributes(params[:itinerario])
        format.html { redirect_to @itinerario, notice: 'Itinerario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @itinerario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itinerarios/1
  # DELETE /itinerarios/1.json
  def destroy
    @itinerario = Itinerario.find(params[:id])
    @itinerario.destroy

    respond_to do |format|
      format.html { redirect_to itinerarios_url }
      format.json { head :no_content }
    end
  end
end
