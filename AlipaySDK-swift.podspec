Pod::Spec.new do |s|

  s.name                  = 'AlipaySDK-swift'
  s.version               = '15.5.2'
  s.summary               = '支付宝SDK v15.5.2'
  s.homepage              = 'https://github.com/syhpox'
  s.ios.deployment_target = '7.0'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { 'syhpox' => '867964607@qq.com' }
  s.social_media_url      = 'https://docs.open.alipay.com/204/105295/'
  s.source                = { :git => 'https://github.com/Syhpox/AlipaySDK-swift.git', :tag => s.version }
  s.frameworks            = 'SystemConfiguration', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation','CFNetwork', 'CoreMotion'
  s.libraries             = 'z', 'c++'
  s.resource              = 'AlipaySDK.bundle'
  s.vendored_frameworks   = 'AlipaySDK.framework'
  s.requires_arc          = true
  s.prepare_command = <<-EOF

    # 创建Base Module
    rm -rf AlipaySDK.framework/Modules
    mkdir AlipaySDK.framework/Modules
    touch AlipaySDK.framework/Modules/module.modulemap
    cat <<-EOF > AlipaySDK.framework/Modules/module.modulemap
    framework module AlipaySDK {
      umbrella header "AlipaySDK.h"

      export *
      link "c++"
      link "z"
    }
    \EOF
  EOF
end
