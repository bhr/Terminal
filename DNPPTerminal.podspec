Pod::Spec.new do |s|
  s.name             = "DNPPTerminal"
  s.version          = "0.4"
  s.summary          = "Swift Terminal wrapper using hterm"
  s.homepage         = "https://github.com/bhr/Terminal"
  s.license          = 'Code is MIT.'
  s.author           = { "Benedikt" => "benedikt@hirmer.me" }
  s.source           = { :git => "https://github.com/bhr/Terminal.git", :tag => s.version }

  s.platform     = :ios, '13.0'
  s.requires_arc = true
  s.swift_version = '5.0'

  s.source_files = 'Terminal/Source/**/*.{h,m,swift}'
  s.resources = 'Terminal/Resources/*'
  s.exclude_files = 'Terminal/Example/*'
  s.frameworks = 'UIKit'
  s.module_name = 'DNPPTerminal'
  s.prepare_command = <<-CMD
        sh $PWD/build_hterm.sh
     CMD
end
