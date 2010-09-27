class AssociadosController < ApplicationController
  # GET /associados
  # GET /associados.xml
  def index
    @associados = Associado.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @associados }
    end
  end

  # GET /associados/1
  # GET /associados/1.xml
  def show
    @associado = Associado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @associado }
    end
  end

  # GET /associados/new
  # GET /associados/new.xml
  def new
    @associado = Associado.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @associado }
    end
  end

  # GET /associados/1/edit
  def edit
    @associado = Associado.find(params[:id])
  end

  # POST /associados
  # POST /associados.xml
  def create
    @associado = Associado.new(params[:associado])

    respond_to do |format|
      if @associado.save
        format.html { redirect_to(@associado, :notice => 'Associado was successfully created.') }
        format.xml  { render :xml => @associado, :status => :created, :location => @associado }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @associado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /associados/1
  # PUT /associados/1.xml
  def update
    @associado = Associado.find(params[:id])

    respond_to do |format|
      if @associado.update_attributes(params[:associado])
        format.html { redirect_to(@associado, :notice => 'Associado was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @associado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /associados/1
  # DELETE /associados/1.xml
  def destroy
    @associado = Associado.find(params[:id])
    @associado.destroy

    respond_to do |format|
      format.html { redirect_to(associados_url) }
      format.xml  { head :ok }
    end
  end
end
