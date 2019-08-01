class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_article, except: [:index, :new, :create]
  def index
    # obtiene todos los registros de la tabla que corresponde a este modelo (Articles)
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = current_user.articles.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    # elimina el objeto de la base de datos
    @article.destroy
    redirect_to articles_path, notice: 'Articulo eliminado'
  end

  # metodos privados de la clase
  private

  def validate_user
    redirect_to new_user_session_path, notice: 'Necesitas iniciar sesión'
  end

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end

end
