class ArticlesController < ApplicationController
  def index
    # obtiene todos los registros de la tabla que corresponde a este modelo (Articles)
    @articles = Article.all
  end

  def show
    #encontramos un registro por su id
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def update
    #@article.update_attributes({title: 'Nuevo titulo'})
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    # elimina el objeto de la base de datos
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  # metodos privados de la clase
  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

end
