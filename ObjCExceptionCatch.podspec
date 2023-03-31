#
#  Be sure to run `pod spec lint ObjCExceptionCatch.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "ObjCExceptionCatch"
  s.version      = "1.2.0"
  s.summary      = "Small wrapper function that catches NSExceptions and converts them to NSErrors."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
    Small wrapper function that catches NSExceptions and converts them to NSErrors.

    Since NSExceptions, if left unhandled, will cause a crash in Swift code, this wrapper helps
    catch and return them as regular Swift errors.
    DESC

  s.homepage     = "https://github.com/advantagefse/ObjCExceptionCatch"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = {
      "Christos Koninis" => "c.koninis@afse.eu",
      "Akis Vavouranakis" => "a.vavouranakis@afse.eu",
      "Christos Chryssochoidis" => "c.chryssochoidis@afse.eu"
  }
  # Or just: s.author    = "Christos Chryssochoidis"
  # s.authors            = { "Christos Chryssochoidis" => "c.chryssochoidis@afse.eu" }
  # s.social_media_url   = "http://twitter.com/Christos Chryssochoidis"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios

  #  When using multiple platforms
  s.ios.deployment_target = "14.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/advantagefse/ObjCExceptionCatch.git", :tag => "#{s.version}" }

  # Swift version
  s.swift_version = '5.7'

  s.source_files  = " ObjCExceptionCatch", "ObjCExceptionCatch/**/*.{h,m,swift}"


end
