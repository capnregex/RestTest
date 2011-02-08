class HoundsController < ApplicationController
  # GET /hounds
  # GET /hounds.xml
  def index
    @hounds = Hound.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hounds }
    end
  end

  # GET /hounds/1
  # GET /hounds/1.xml
  def show
    @hound = Hound.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hound }
    end
  end

  # GET /hounds/new
  # GET /hounds/new.xml
  def new
    @hound = Hound.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hound }
    end
  end

  # GET /hounds/1/edit
  def edit
    @hound = Hound.find(params[:id])
  end

  # POST /hounds
  # POST /hounds.xml
  def create
    @hound = Hound.new(params[:hound])

    respond_to do |format|
      if @hound.save
        format.html { redirect_to(@hound, :notice => 'Hound was successfully created.') }
        format.xml  { render :xml => @hound, :status => :created, :location => @hound }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hound.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hounds/1
  # PUT /hounds/1.xml
  def update
    @hound = Hound.find(params[:id])

    respond_to do |format|
      if @hound.update_attributes(params[:hound])
        format.html { redirect_to(@hound, :notice => 'Hound was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hound.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hounds/1
  # DELETE /hounds/1.xml
  def destroy
    @hound = Hound.find(params[:id])
    @hound.destroy

    respond_to do |format|
      format.html { redirect_to(hounds_url) }
      format.xml  { head :ok }
    end
  end
end
