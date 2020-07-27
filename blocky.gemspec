require_relative 'lib/blocky/version'

Gem::Specification.new do |spec|
  spec.name          = "blocky"
  spec.license       = "MIT"
  spec.version       = Blocky::VERSION
  spec.authors       = ["Abhinav Saxena"]
  spec.email         = ["abhinav061@gmail.com"]

  spec.summary       = %q{blocky is a commandline line tool to help you easily block websites, and unblock them when you need them}
  #spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "http://www.abhinav.co/blocky.html"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/abhinavs/blocky"
  spec.metadata["changelog_uri"] = "https://github.com/abhinavs/blocky"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
