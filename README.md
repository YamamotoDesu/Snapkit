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
## Top with full width
<img width="354" alt="iPhone_12" src="https://user-images.githubusercontent.com/47273077/140647453-c52ee244-089b-4a74-b1fd-d9bcecc0b464.png">

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
        
        // top full-width
        orangeSquareView.snp.makeConstraints { make in
            make.height.equalTo(boxWidth)
            make.leading.trailing.equalToSuperview()
            make.top.equalToSuperview()
        }
```

## 3. Superview vs. Safe Area
<img width="356" alt="iPhone_12" src="https://user-images.githubusercontent.com/47273077/140913838-e1823e30-7199-4f11-bb0b-53417b320723.png">

```swift
        // top-left (with safe-area)
        redSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalToSuperview()
        }
        // top-right (with safe-area)
        greenSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.trailing.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
        }
        // bottom-left (with safe-area)
        blueSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.leading.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        // bottom-right (with safe-area)
        yellowSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        // center
        orangeSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.center.equalToSuperview()
        }
```

## Top-left and top-right
<img width="355" alt="iPhone_12" src="https://user-images.githubusercontent.com/47273077/140915813-54278088-96da-40ad-88ca-87c1adb49098.png">

```swift
        
        // top-left with padding
        redSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.top.equalToSuperview().offset(80)
            make.leading.equalToSuperview().offset(40)
        }
        // top-right with padding
        greenSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.top.equalToSuperview().offset(80)
            make.trailing.equalToSuperview().offset(-40)
        }
```

## Bottom-left and bottom-right
<img width="365" alt="iPhone_12" src="https://user-images.githubusercontent.com/47273077/140916212-2a7c6686-8bdd-4fda-b006-6bb8b2ff70be.png">

```swift
        // bottom-left with padding
        blueSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.leading.equalToSuperview().offset(40)
            make.bottom.equalToSuperview().offset(-80)
        }
        // bottom-right with padding
        yellowSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.trailing.equalToSuperview().offset(-40)
            make.bottom.equalToSuperview().offset(-80)
        }
```

## Leading and trailing with inset()
<img width="359" alt="iPhone_12" src="https://user-images.githubusercontent.com/47273077/140917403-35c320e3-d544-4ab4-b086-4722abd3b24b.png">
```swift
        orangeSquareView.snp.makeConstraints { make in
            make.height.equalTo(boxWidth)
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(40)
        }
```

