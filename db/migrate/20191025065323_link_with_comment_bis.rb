class LinkWithCommentBis < ActiveRecord::Migration[6.0]
  def change
    add_reference :comment_bis, :comment, foreign_key: true
  end
end
