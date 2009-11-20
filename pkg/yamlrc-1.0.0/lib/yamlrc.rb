require 'yaml'
class Yamlrc
  VERSION = '1.0.0'
  CONFIG_DIRECTORIES = [ "/etc", ENV['HOME'], File.dirname($0) ]
  def self.load(config_name)
    return {} if config_name.nil?
    config = {}
    CONFIG_DIRECTORIES.each do |dir|
      file = File.join(dir,config_name)
      if( File.exists?(file) )
        config.merge! YAML.load_file(file)
      end
    end
    return config
  end
end

