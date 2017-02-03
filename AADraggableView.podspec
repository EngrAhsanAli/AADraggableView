
Pod::Spec.new do |s|
s.name             = 'AADraggableView'
s.version          = '0.1.0'
s.summary          = 'AADraggableView is easy-to-use draggable views with options, written in Swift.'

s.description      = <<-DESC
AADraggableView is a light-weight and easy-to-use draggable views in screen bounds with options designed to drag any UIView. It allows to drag the UIView in any view controller.
DESC

s.homepage         = 'https://github.com/EngrAhsanAli/AADraggableView'
s.screenshots     = 'https://raw.githubusercontent.com/EngrAhsanAli/AADraggableView/master/Screenshots/AADraggableView.png'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'engrahsanali' => 'hafiz.m.ahsan.ali@gmail.com' }
s.source           = { :git => 'https://github.com/EngrAhsanAli/AADraggableView.git', :tag => s.version.to_s }

s.ios.deployment_target = '8.0'

s.source_files = 'AADraggableView/Classes/**/*'

end
