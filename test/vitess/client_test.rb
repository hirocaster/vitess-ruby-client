require 'test_helper'

class Vitess::ClientTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Vitess::Client::VERSION
  end
end
