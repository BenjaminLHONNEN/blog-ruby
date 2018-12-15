class PostDecorator < SimpleDelegator
  def to_post
    {
        title: title,
        user_name: user.name,
        content: content,
        category_name: category.name
    }
  end
end