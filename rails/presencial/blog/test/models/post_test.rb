require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @post = posts(:hola_mundo)
  end

  test "Post deberia ser valido" do
    assert @post.valid?
  end

  # test "Post con titulo y contenido" do
  #     post = Post.new title: 'Hola', content: 'My contenido'
  #     user = users(:simon)
  #     post = Post.new title: 'Hola', content: 'My content', user: user   
  #     assert post.save
  # end

  test "Post con titulo y contenido" do 
      assert @post.save
  end


  test "Validar contenido si es mayor a 140" do
    @post.content = 'a' * 142
    @post.validate
    assert_includes @post.errors[:content], 'is too short (mininum is 1 character)'
  end

end
