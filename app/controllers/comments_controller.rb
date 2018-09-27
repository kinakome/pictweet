class CommentsController < ApplicationController
  def create
    @comment = Comment.create(text: comment_params[:text], tweet_id: comment_params[:tweet_id], user_id: current_user.id)
    redirect_to "/tweets/#{@comment.tweet.id}"
    #コメントと結びつくツイートの詳細画面に遷移する
    #undefined method `tweet' for #<Comment:0x007f8551d74ca8>
  end

  private
  def comment_params
    params.permit(:text, :tweet_id)
  end
end
