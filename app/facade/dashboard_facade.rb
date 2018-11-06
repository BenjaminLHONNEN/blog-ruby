# frozen_string_literal: true
class DashboardFacade
  def initialize(user)
    @user = user
  end

  def nb_post
    Post.count
  end

  def nb_user
    User.count
  end

  def nb_category
    Category.count
  end
end
