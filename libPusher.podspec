Pod::Spec.new do |s|
  s.name            = 'libPusher'
  s.version         = '1.6.1'
  s.license         = 'MIT'
  s.summary         = 'An Objective-C client for the Pusher service'
  s.homepage        = 'https://github.com/pusher/libPusher'
  s.author          = 'Luke Redpath'
  s.source          = { git: 'https://github.com/pusher/libPusher.git', tag: 'v1.6.1' }
  s.requires_arc    = true
  s.header_dir      = 'Pusher'
  s.default_subspec = 'Core'

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'

  s.subspec 'Core' do |subspec|
    subspec.dependency 'SocketRocket', '0.5.1'

    subspec.source_files         = 'Library/**/*.{h,m}'
    subspec.private_header_files = 'Library/Private Headers/*'
  end

  s.subspec 'ReactiveExtensions' do |subspec|
    subspec.dependency 'libPusher/Core'
    subspec.dependency 'ReactiveCocoa', '~> 4'

    subspec.source_files = 'ReactiveExtensions/*'
    subspec.private_header_files = 'ReactiveExtensions/*_Internal.h'
  end
end
