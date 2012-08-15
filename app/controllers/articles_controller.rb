class ArticlesController < ApplicationController

  before_filter :authenticate_user!

  before_filter :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all

    respond_to do |format|
      format.html
      format.json { render :json => @articles }
    end
  end

  def show
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
    @article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url }
      format.json { head :no_content }
      format.js
    end
  end

  def edit_multiple
    @articles = Article.find(params[:article_ids])
  end

  def update_multiple
    @articles = Article.find(params[:article_ids])
    @articles.each do |article|
      article.update_attributes!(params[:article].reject { |key, value| value.blank? })
    end
    flash[:notice] = "Updated articles!"
    redirect_to articles_path
  end

  protected
  def find_article
    @article = Article.find(params[:id])
  end

end
