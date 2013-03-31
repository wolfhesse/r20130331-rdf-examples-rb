require 'minitest/unit'
require 'minitest/reporters'
MiniTest::Reporters.use!

require 'test/unit'
require File.dirname(__FILE__) + '/../sample_two'


require 'test_helper'
class SampleTwoTest < Test::Unit::TestCase

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
    sample_two = SampleTwo.new
    assert_not_nil(sample_two)
  end

  def sample_one_running
    SampleTwo.new.run
  end
end