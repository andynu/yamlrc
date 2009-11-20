require "test/unit"
require "yamlrc"

class Yamlrc
  CONFIG_DIRECTORIES = [File.dirname(__FILE__)]
end

class TestYamlrc < Test::Unit::TestCase
  def test_currentdir
    assert_equal({}, Yamlrc.load(nil))
    assert_equal({:category => {:a => 1, :b => 2, :c => 3}}, Yamlrc.load("test_config.yaml"))
  end
end
