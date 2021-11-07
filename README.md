# **[How To Use SnapKit](https://betterprogramming.pub/how-to-use-snapkit-in-your-ios-apps-cbe38c893b23)** 
> Most iOS projects nowadays gradually begin by removing Storyboard and Xib. Developers prefer to manage UI and layouts by writing constraints programmatically. It has become one of the best solutions to avoid merging conflicts, especially when working in a team.

> The Auto Layout feature is available in Storyboard and Xib. It also can be written in code. Some developers prefer to use the pure API provided in Apple documentation, and others (including me) might prefer to use wrapper libraries such as Snapkit, PureLayout, and Cartography.

## Basic Positioning 
<img width="355" alt="iPhone_12" src="https://user-images.githubusercontent.com/47273077/140643021-eb5e05db-f4be-4250-88b1-0d9b65c45436.png"> 

```swift 
    lazy var redSquareView = UIView(frame: .zero)
    lazy var greenSquareView = UIView(frame: .zero)
    lazy var blueSquareView = UIView(frame: .zero)
    lazy var yellowSquareView = UIView(frame: .zero)
    lazy var orangeSquareView = UIView(frame: .zero)
    let boxWidth: CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        // colouring
        redSquareView.backgroundColor = .red
        greenSquareView.backgroundColor = .green
        blueSquareView.backgroundColor = .blue
        yellowSquareView.backgroundColor = .yellow
        orangeSquareView.backgroundColor = .orange
        // add subviews
        [redSquareView, greenSquareView, blueSquareView, yellowSquareView, orangeSquareView].forEach { box in
            view.addSubview(box)
        }
        // top-left
        redSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.top.leading.equalToSuperview()
        }
        // top-right
        greenSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.top.trailing.equalToSuperview()
        }
        
        // bottom-left
        blueSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.bottom.leading.equalToSuperview()
        }
        // bottom-right
        yellowSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.bottom.trailing.equalToSuperview()
        }
        
        // center
        orangeSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.center.equalToSuperview()
        }
    }
```

## Center vertically
<img width="340" alt="iPhone_12" src="https://user-images.githubusercontent.com/47273077/140647196-070a0b60-17fe-46b7-9df0-267eedb0abea.png">

```swift

    func setupView() {
        // colouring
        redSquareView.backgroundColor = .red
        greenSquareView.backgroundColor = .green
        blueSquareView.backgroundColor = .blue
        yellowSquareView.backgroundColor = .yellow
        orangeSquareView.backgroundColor = .orange
        // add subviews
        [redSquareView, greenSquareView, blueSquareView, yellowSquareView, orangeSquareView].forEach { box in
            view.addSubview(box)
        }
        // center-left
        redSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.centerY.leading.equalToSuperview()
        }
        // center-right
        greenSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.centerY.trailing.equalToSuperview()
        }
        
        // bottom-left
        blueSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.bottom.leading.equalToSuperview()
        }
        // bottom-right
        yellowSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.bottom.trailing.equalToSuperview()
        }
        
        // center
        orangeSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.center.equalToSuperview()
        }
    }
  ```

