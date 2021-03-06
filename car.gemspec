require_relative 'lib/car/version'

Gem::Specification.new do |spec|
  spec.name          = "car"
  spec.version       = Car::VERSION
  spec.authors       = ["nikolatriki"]
  spec.email         = ["kjofte@yahoo.com"]

  spec.summary       = %q{'This is a car gem'}
  spec.description   = %q{'This is longer description of the summary of the car gem'}
  spec.homepage      = "https://github.com/nikolatriki/CAR"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/nikolatriki/CAR"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nikolatriki/CAR"
  spec.metadata["changelog_uri"] = "https://github.com/nikolatriki/CAR"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
