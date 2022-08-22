Pod::Spec.new do |s|
	s.name = "matrix-wechat-rcemodify"
	s.version = "1.0.1"
	s.summary = "Modify Matrix for iOS/macOS is a performance probe tool developed and used by WeChat."
	s.license = {"type"=>"MIT", "file"=>"LICENSE"}
	s.authors = {"asunrong"=>"gongjiahao@rongcloud.cn"}
	s.homepage = "https://github.com/rongcloud-community/matrix-wechat.git"
	s.description = "Modify Matrix for iOS/macOS is a performance probe tool developed and used by WeChat. \nIt is currently integrated into the APM (Application Performance Manage) platform inside WeChat. \nThe monitoring scope of the current tool includes: crash, lag, and out-of-memory, which includes the following two plugins:\n\n1.WCCrashBlockMonitorPlugin: Based on [KSCrash](https://github.com/kstenerud/KSCrash) framework, it features cutting-edge lag stack capture capabilities with crash cpature.\n\n2.WCMemoryStatPlugin: A performance-optimized out-of-memory monitoring tool that captures memory allocation and the callstack of an application's out-of-memory event."
	s.source = { :git => 'https://github.com/rongcloud-community/matrix-wechat.git', :tag => s.version.to_s }
	

	s.ios.deployment_target    = '9.0'
#	s.module_name = "Matrix"
# s.ios.vendored_frameworks   = 'ios/RCBMWorkKit.framework' , 'ios/openssl.framework'
	s.ios.vendored_framework   = 'ios/Matrix.framework'
	# s.public_header_files = 'ios/RCBMWorkKit.framework/Versions/A/Headers/RCBMWorkKitConfig.h'
#	s.resource = 'ios/RCBMDefaultTheme.bundle'
	s.pod_target_xcconfig = {
		'VALID_ARCHS' => 'arm64 x86_64',
#   'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
		'ENABLE_BITCODE' => 'NO'
	}
#	s.dependency 'AFNetworking', '~> 4.0.1'
#	s.dependency 'YYKit','~> 1.0.9'
#	s.dependency 'Masonry', '~> 1.1.0'
#	s.dependency 'SDWebImage', '~> 5.8.0'
##  s.dependency 'FMDB', '~> 2.7.5'
#	s.dependency 'SSZipArchive', '~> 2.4.3'
#	s.dependency 'MBProgressHUD', '~> 1.2.0'
end

