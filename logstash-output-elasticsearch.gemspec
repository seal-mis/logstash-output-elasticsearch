Gem::Specification.new do |s|

  s.name            = 'logstash-output-elasticsearch'
  s.version         = '4.1.3'
  s.licenses        = ['apache-2.0']
  s.summary         = "Logstash Output to Elasticsearch"
  s.description     = "This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/logstash-plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Elastic"]
  s.email           = 'info@elastic.co'
  s.homepage        = "http://logstash.net/"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  s.add_runtime_dependency 'stud', ['>= 0.0.17', '~> 0.0']
  s.add_runtime_dependency 'cabin', ['~> 0.6']
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_development_dependency 'ftw', '~> 0.0.42'
  s.add_development_dependency 'logstash-codec-plain'

  if RUBY_PLATFORM == 'java'
    s.platform = RUBY_PLATFORM
    s.add_runtime_dependency "manticore", '>= 0.5.4', '< 1.0.0'
  end

  s.add_development_dependency 'logstash-devutils'
  s.add_development_dependency 'longshoreman'
  s.add_development_dependency 'flores'
  # Still used in some specs, we should remove this ASAP
  s.add_development_dependency 'elasticsearch'
end
