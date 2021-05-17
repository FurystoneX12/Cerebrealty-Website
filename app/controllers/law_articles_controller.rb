class LawArticlesController < ApplicationController
  before_action :set_law_article, only: %i[ show edit update destroy ]

  # GET /law_articles or /law_articles.json
  def index
    @law_articles = LawArticle.all
  end

  # GET /law_articles/1 or /law_articles/1.json
  def show
  end

  # GET /law_articles/new
  def new
    @law_article = LawArticle.new
  end

  # GET /law_articles/1/edit
  def edit
  end

  # POST /law_articles or /law_articles.json
  def create
    @law_article = LawArticle.new(law_article_params)

    respond_to do |format|
      if @law_article.save
        format.html { redirect_to @law_article, notice: "Law article was successfully created." }
        format.json { render :show, status: :created, location: @law_article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @law_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /law_articles/1 or /law_articles/1.json
  def update
    respond_to do |format|
      if @law_article.update(law_article_params)
        format.html { redirect_to @law_article, notice: "Law article was successfully updated." }
        format.json { render :show, status: :ok, location: @law_article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @law_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /law_articles/1 or /law_articles/1.json
  def destroy
    @law_article.destroy
    respond_to do |format|
      format.html { redirect_to law_articles_url, notice: "Law article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_law_article
      @law_article = LawArticle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def law_article_params
      params.require(:law_article).permit(:article_name, :content)
    end
end
