# frozen_string_literal: true
lib = File.expand_path("../lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative "lib/nizam_p/version"

Gem::Specification.new do |spec|
  spec.name = "nizam_p"
  spec.version = NizamP::VERSION
  spec.authors = ["Nizam"]
  spec.email = ["nizam12khan@gmail.com"]

  spec.summary = %q{Palindrome detector}
  spec.description = %q{Learn Enough Ruby palindrome detector}
  spec.homepage = "https://github.com/nizam12khan/Ruby-gems/tree/main/nizam_p"
  spec.required_ruby_version = ">= 2.6.0"
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

end
