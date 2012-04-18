class ProducersController < ApplicationController	
	
	def index
		@producers = Producer.all

		respond_to do |format|
		format.html
		format.json { render :json => @producers }
		end
	end
	
	def show
		@producer = Producer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @producer }
    end
	end
	
	def new
		@producer = Producer.new#(:contact => Contact.new)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @producer }
    end
	end
	
	def edit
		@producer = Producer.find(params[:id])
	end
	
	def create
    @producer = Producer.new(params[:producer])

    respond_to do |format|
      if @producer.save
        # @producer.contact.save
        format.html { redirect_to @producer, :notice => 'producer was successfully created.' }
        format.json { render :json => @producer, :status => :created, :location => @producer }
      else
        format.html { render :action => "new" }
        format.json { render :json => @producer.errors, :status => :unprocessable_entity }
      end
    end
  end
	
	def update
		@producer = Producer.find(params[:id])

    respond_to do |format|
      if @producer.update_attributes(params[:producer])
        format.html { redirect_to @producer, :notice => 'Producer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @producer.errors, :status => :unprocessable_entity }
      end
    end
	end
	
	def destroy
    @producer = Producer.find(params[:id])
    @producer.destroy

    respond_to do |format|
      format.html { redirect_to producers_url }
      format.json { head :no_content }
    end
  end
	
end