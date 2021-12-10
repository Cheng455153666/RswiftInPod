#
# Be sure to run `pod lib lint HomeModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HomeModule'
  s.version          = '0.0.1'
  s.summary          = 'A short description of HomeModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/liqing.Cheng/HomeModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liqing.Cheng' => 'liqing.Cheng@beantechs.com' }
  s.source           = { :git => 'https://github.com/liqing.Cheng/HomeModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  
  s.subspec "Classes" do |ss|
    ss.source_files = "#{s.name}/Classes/**/*"
  end

  s.subspec "Assets" do |ss|
    ss.subspec "Images" do |sss|
      sss.resources = ["#{s.name}/Assets/Images/*.{png, jpeg}", "#{s.name}/Assets/Images/**/*.{png, jpeg}"]
    end

    ss.subspec "Xib" do |sss|
      sss.resources = ["#{s.name}/Assets/Xib/*", "#{s.name}/Assets/Xib/**/*"]
    end

    ss.subspec "Files" do |sss|
      sss.resources = ["#{s.name}/Assets/Files/*", "#{s.name}/Assets/Files/**/*"]
    end

    ss.subspec "Fonts" do |sss|
      sss.resources = ["#{s.name}/Assets/Fonts/*.{ttf}", "#{s.name}/Assets/Fonts/**/*.{ttf}"]
    end

    ss.subspec "Localized" do |sss|
      sss.resources = ["#{s.name}/Assets/Localized/*", "#{s.name}/Assets/Localized/**/*"]
    end
  end

  s.dependency 'R.swift', '6.1.0'
end
