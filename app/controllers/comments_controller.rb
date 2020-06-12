class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:atricle_id])
    @article.comments.create(comment_params)

    redirect_to article_path(@article)
  end

  private
  def comment_params
    params.require(:comment).permit(:auther, :body)
  end
end
