class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def show; end

  def new
    @agenda = Agenda.find(params[:agenda_id])
    @article = Article.new
  end

  def edit; end

  def create
    @agenda = Agenda.find(params[:agenda_id])
    @article = @agenda.articles.build(article_params)
    @article.team_id = @agenda.team_id
    @article.user = current_user
    if @article.save
      redirect_to article_url(@article), notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.fetch(:article, {}).permit %i[
      title content
    ]
  end
end