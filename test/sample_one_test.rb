require 'test/unit'

require 'minitest/unit'
require 'minitest/reporters'

require 'test_helper'
MiniTest::Reporters.use!

require File.dirname(__FILE__) + '/../sample_one'

class SampleOneTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_fail

    # To change this template use File | Settings | File Templates.
    #fail('Not implemented')
  end

  def test_create_instance
    sample_one = SampleOne.new
    assert_not_nil(sample_one)
  end

  def sample_one_running
    SampleOne.new.run
  end
end