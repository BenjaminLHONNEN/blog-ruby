# frozen_string_literal: true

class Search
  def initialize(query)
    @query = query
  end

  def perform
    out = @query != '' ? Post.joins(:user)
                             .where(
                               ['users.name LIKE ? OR posts.title Like ?',
                                "%#{@query}%",
                                "%#{@query}%"]
                             ) : Post.all

    out
  end
end
