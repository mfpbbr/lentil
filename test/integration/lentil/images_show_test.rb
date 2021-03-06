require 'test_helper'

class ImagesShowIndexTest < ActionDispatch::IntegrationTest

  setup do
    visit(lentil.image_path lentil_images(:one))
  end

  # This is important otherwise there is some strange reloading that goes on
  test "should have a class on the body" do
    assert page.has_selector?('body.lentil-images_show')
  end

end