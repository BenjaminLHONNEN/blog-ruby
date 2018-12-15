# frozen_string_literal: true

class Search
  def initialize(query)
    @query = query
  end

  def perform
    @query != '' ? Post.joins(:user)
                       .where(
                           ['users.name LIKE ? OR posts.title Like ?',
                            "%#{@query}%",
                            "%#{@query}%"]
                       ) : Post.all
  end
end
