require 'test_helper'

describe Search, :model do
  focus
  it 'returns all posts' do
    out = Search.new('').perform
    assert_equal 3, out.length
  end

  focus
  it 'returns one post' do
    Post.create!(
        title:"le titre",
        content: "le contenu",
        user_id: users(:one).id,
        category_id: categories(:one).id
    )
    test = Post.all
    out = Search.new("le titre").perform
    assert_equal 1, out.length
  end

  focus
  it 'find by user' do
    Post.create!(
        title:"le titre",
        content: "le contenu",
        user_id: users(:one).id,
        category_id: categories(:one).id
    )
    test = Post.all
    out = Search.new(users(:one).name).perform
    assert_equal 1, out.length
  end

  focus
  it 'returns error post' do
    out = Search.new('None').perform
    assert_equal 0, out.length
  end
end