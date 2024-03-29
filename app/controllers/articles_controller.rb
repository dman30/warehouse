class ArticlesController < ApplicationController

  before_filter :authenticate_user!

  def index
    @articles = Article.all

    respond_to do |format|
      format.html
      format.json { render :json => @articles }
    end
  end

  def show
    @article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @article }
    end
  end

  def new
    @article = Article.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @article }
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params[:article])

    respond_to do |format|
      if @article.save
        format.html { redirect_to articles_url, :notice => 'article was successfully created.' }
        format.json { render :json => @article, :status => :created, :location => @article }
      else
        format.html { render "new" }
        format.json { render :json => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @article = Article.find(params[:id])

    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to articles_url, :notice => 'Article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render "edit" }
        format.json { render :json => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @article = Article.find(params[:id])

    @article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url }
      format.json { head :no_content }
      format.js
    end
  end

  def edit_multiple
    if params[:article_ids]
      @articles = Article.find(params[:article_ids])
    else
      # @articles = []
      flash[:error] = "No Articles selected!"
      redirect_to articles_url
    end
  end

  def update_multiple
    @articles = Article.find(params[:article_ids])
    @articles.each do |article|
      article.update_attributes!(params[:article].reject { |key, value| value.blank? })
    end
    flash[:notice] = "Updated articles!"
    redirect_to articles_url
  end

end
