# coding: utf-8


Gem::Specification.new do |spec|
  spec.name          = "jekyll-clean-dark"
  spec.version       = "0.1.3"
  spec.authors       = ["Pavel Makhov"]
  spec.email         = ["streetturtle@gmail.com"]

  spec.summary       = %q{Customizable dark theme for Jekyll.}
  spec.description   = "Customizable dark theme for Jekyll. Supports tags, comments, analytics, share buttons."
  spec.homepage      = "https://github.com/streetturtle/jekyll-clean-dark"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass|posts|tag)/|(LICENSE|README)((\.(txt|md|markdown|xml)|$)))}i)
  end

  spec.add_development_dependency "jekyll", "~> 3.5"
  spec.add_development_dependency "bundler", "~> 1.12"
end
