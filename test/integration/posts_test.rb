require 'test_helper'

feature 'Post Homepage' do
  before do
    sign_in users(:one)
  end
  describe "Form" do
    it "#delete" do
      assert_difference 'Post.count' do
        delete admin_post_path(posts(:one).id)

        assert_equal 302, last_response.status
      end
    end
    it "#create" do
      assert_difference 'Post.count' do

        post admin_posts_path, {
            post: {
                title: 'titre',
                content: 'content',
                category_id: categories(:one)
            }
        }

        assert_equal 200, last_response.status
      end
    end
  end
end