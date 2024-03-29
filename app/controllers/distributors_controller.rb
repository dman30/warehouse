class DistributorsController < ApplicationController	
	
	def index
		@distributors = Distributor.all

		respond_to do |format|
		format.html
		format.json { render :json => @distributors }
		end
	end
	
	def show
		@distributor = Distributor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @distributor }
    end
	end
	
	def new
		@distributor = Distributor.new(:contact => Contact.new)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @distributor }
    end
	end
	
	def edit
		@distributor = Distributor.find(params[:id])
	end
	
	def create
    @distributor = Distributor.new(params[:distributor])
    @distributor.contact.company_name = @distributor.company_name

    respond_to do |format|
      if @distributor.save
        format.html { redirect_to @distributor, :notice => 'distributor was successfully created.' }
        format.json { render :json => @distributor, :status => :created, :location => @distributor }
      else
        format.html { render :action => "new" }
        format.json { render :json => @distributor.errors, :status => :unprocessable_entity }
      end
    end
  end
	
	def update
		@distributor = Distributor.find(params[:id])

    respond_to do |format|
      if @distributor.update_attributes(params[:distributor])
        format.html { redirect_to articles_url, :notice => "Distributor #{@distributor.company_name} was successfully updated." }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @distributor.errors, :status => :unprocessable_entity }
      end
    end
	end
	
	def destroy
    @distributor = Distributor.find(params[:id])
    @distributor.destroy

    respond_to do |format|
      format.html { redirect_to distributors_url }
      format.json { head :no_content }
      format.js
    end
  end
	
end
