class Admin::WeblocationsController < ApplicationController

  before_filter :authenticate_user!

    # GET /admin/weblocations
    # GET /admin/weblocations.json
    def index
      @weblocations = Weblocation.all.sort { |a, b| a.name.downcase <=> b.name.downcase }

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @weblocations }
      end
    end

    # GET /admin/weblocations/new
    # GET /admin/weblocations/new.json
    def new
      @weblocation = Weblocation.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @weblocation }
      end
    end

    # GET /admin/weblocations/1/edit
    def edit
      @weblocation = Weblocation.find(params[:id])
    end

    # POST /admin/weblocations
    # POST /admin/weblocations.json
    def create
      @weblocation = Weblocation.new(params[:weblocation])

      respond_to do |format|
        if @weblocation.save
          format.html { redirect_to :action => "index", :notice => 'Weblocation was successfully updated.' }
          format.json { render json: @weblocation, status: :created, location: @weblocation }
        else
          format.html { render action: "new" }
          format.json { render json: @weblocation.errors, status: :unprocessable_entity }
        end
      end
    end

    # PUT /admin/weblocations/1
    # PUT /admin/weblocations/1.json
    def update
      @weblocation = Weblocation.find(params[:id])

      respond_to do |format|
        if @weblocation.update_attributes(params[:weblocation])
          format.html { redirect_to :action => "index", notice: 'Weblocation was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @weblocation.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/weblocations/1
    # DELETE /admin/weblocations/1.json
    def destroy
      @weblocation = Weblocation.find(params[:id])
      @weblocation.destroy

      respond_to do |format|
        format.html { redirect_to admin_weblocations_url }
        format.json { head :ok }
      end
    end
end
