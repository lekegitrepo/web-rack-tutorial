require 'test_helper'

class TokenAccessTest < ActionDispatch::IntegrationTest
  test 'allows access for valid tokens' do
    get middleware_path, headers: { 'token' => 'my-access-token'}
    assert_equal 'success', response.body
  end

  test 'returns error for invalid or missing tokens' do
    get middleware_path
    assert_equal 'invalid or missing token', response.body
  end
end
