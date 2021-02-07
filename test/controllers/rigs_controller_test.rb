require "test_helper"

class RigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rig = rigs(:one)
  end

  test "should get index" do
    get rigs_url
    assert_response :success
  end

  test "should get new" do
    get new_rig_url
    assert_response :success
  end

  test "should create rig" do
    assert_difference('Rig.count') do
      post rigs_url, params: { rig: { description: @rig.description, name: @rig.name } }
    end

    assert_redirected_to rig_url(Rig.last)
  end

  test "should show rig" do
    get rig_url(@rig)
    assert_response :success
  end

  test "should get edit" do
    get edit_rig_url(@rig)
    assert_response :success
  end

  test "should update rig" do
    patch rig_url(@rig), params: { rig: { description: @rig.description, name: @rig.name } }
    assert_redirected_to rig_url(@rig)
  end

  test "should destroy rig" do
    assert_difference('Rig.count', -1) do
      delete rig_url(@rig)
    end

    assert_redirected_to rigs_url
  end
end
