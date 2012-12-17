class UesesController < ApplicationController
  # GET /ueses
  # GET /ueses.json
  def index
    @ueses = Uese.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ueses }
    end
  end

  # GET /ueses/1
  # GET /ueses/1.json
  def show
    @uese = Uese.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @uese }
    end
  end

  # GET /ueses/new
  # GET /ueses/new.json
  def new
    @uese = Uese.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @uese }
    end
  end

  # GET /ueses/1/edit
  def edit
    @uese = Uese.find(params[:id])
  end

  # POST /ueses
  # POST /ueses.json
  def create
    @uese = Uese.new(params[:uese])

    respond_to do |format|
      if @uese.save
        format.html { redirect_to @uese, notice: 'Uese was successfully created.' }
        format.json { render json: @uese, status: :created, location: @uese }
      else
        format.html { render action: "new" }
        format.json { render json: @uese.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ueses/1
  # PUT /ueses/1.json
  def update
    @uese = Uese.find(params[:id])

    respond_to do |format|
      if @uese.update_attributes(params[:uese])
        format.html { redirect_to @uese, notice: 'Uese was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @uese.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ueses/1
  # DELETE /ueses/1.json
  def destroy
    @uese = Uese.find(params[:id])
    @uese.destroy

    respond_to do |format|
      format.html { redirect_to ueses_url }
      format.json { head :no_content }
    end
  end
end
