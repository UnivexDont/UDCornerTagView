# UDCornerTagView
This is a Angle of view that based on UIView.You set conerView‘s textColor、text、backGroundColor、font size。There are two style is left and right.Default is left.

# ScreenShot
 ![image](https://github.com/UnivexDont/UDCornerTagView/blob/master/ScreenShot.png)

# Sample Code
```swift
let leftCornerView = UDCornerTagView.init(maxX: 100, lableHeight: 30)
let rightCornerView = UDCornerTagView.init(maxX: 100, lableHeight: 30 , style: .right)

leftCornerView.text = "Left"
rightCornerView.text = "Right"

leftCornerView.textColor = .white
rightCornerView.textColor = .white

leftCornerView.backgroundColor = UIColor.magenta
leftCornerView.lableBackgroudColor = UIColor.green

rightCornerView.backgroundColor = UIColor.orange
rightCornerView.lableBackgroudColor = UIColor.brown

contentView.addSubview(leftCornerView)
contentView.addSubview(rightCornerView)
```
## Installation
### CocoaPods

To integrate UDCornerTagView into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
platform:ios,’8.0’
use_frameworks!

target '<Your Target Name>' do
	pod 'UDCornerTagView','~>1.0.1'
end
```
