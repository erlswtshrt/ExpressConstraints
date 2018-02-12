# Express Constraints

Express Constraints is a lightweight layout / constraint library for Swift and Objective-C.

## Methodology

XCode's Storyboard and auto layout create a layer of abstraction between the developer and the code, and often lead to inconsisent sources of truth for layout and flow. For this reason, it is sometimes best to ditch Storybook and go about layouts purely programatically. Unfortunately, the default NSConstraint API is extremely verbose. Express Constraints provides a lightweight wrapper around this API in the form of a UIView extension.

## Installation

Express Constraints can be installed via CocoaPods.

Include the following under `use_frameworks!` in your project's Podfile:

```
pod 'ExpressConstraints'
```

Then run a `pod install`

In your project's target, navigate to 'General' > 'Embedded Binaries' and add the ExpressConstraints.framework file.

## Usage

Import Express Constraints at the top of project files:

```
import ExpressConstraints
```

The framework is based on an extension of UIView. To access the api, use dot completion on an UIView. For example:

```
var view = UIView()
view.constrainabove(...
```

## API

### .constrainBelow

Used to constrain a view below another view

#### Example

constrains view1 below view2

```
view1.constrainBelow(view2, xAlignment: .center)
```
#### Parameters

| Name| Type|
|:-|:-|
|_|UIView|
|**xAlignment**|.left, .center, .right|
|**width (optional)**|CGFloat|
|**height (optional)**|CGFloat|
|**xOffset (optional)**|CGFloat|
|**yOffset (optional)**|CGFloat|

---

### .constrainAbove

Used to constrain a view above another view

#### Example

Constrains view1 above view2

```
view1.constrainAbove(view2, xAlignment: .center)
```
#### Parameters

| Name| Type|
|:-|:-|
|_|UIView|
|**xAlignment**|.left, .center, .right|
|**width (optional)**|CGFloat|
|**height (optional)**|CGFloat|
|**xOffset (optional)**|CGFloat|
|**yOffset (optional)**|CGFloat|


---

### .constrainRightOf

Used to constrain a view to the right of another view

#### Example

Constrains view1 to the right of view2

```
view1.constrainRightOf(view2, yAlignment: .top)
```
#### Parameters

| Name| Type|
|:-|:-|
|_|UIView|
|**yAlignment**|.top, .center, .bottom|
|**width (optional)**|CGFloat|
|**height (optional)**|CGFloat|
|**xOffset (optional)**|CGFloat|
|**yOffset (optional)**|CGFloat|

---

### .constrainLeftOf

Used to constrain a view to the left of another view

#### Example

Constrains view1 to the right of view2

```
view1.constrainLeftOf(view2, yAlignment: .top)
```
#### Parameters

| Name| Type|
|:-|:-|
|_|UIView|
|**yAlignment**|.top, .center, .bottom|
|**width (optional)**|CGFloat|
|**height (optional)**|CGFloat|
|**xOffset (optional)**|CGFloat|
|**yOffset (optional)**|CGFloat|

---

### .constrainChild

Used to constrain a child view within a parent view

#### Example

Constrains childView to the top right corner of parentView

```
parentView.constrainChild(childView, xAlignment: .right, yAlignment: .top)
```
#### Parameters

| Name| Type|
|:-|:-|
|_|UIView|
|**xAlignment**|.left, .center, .right|
|**yAlignment**|.top, .center, .bottom|
|**width (optional)**|CGFloat|
|**height (optional)**|CGFloat|
|**xOffset (optional)**|CGFloat|
|**yOffset (optional)**|CGFloat|

---

### .constrainSize

Used to constrain the size of a view

#### Example

Constrains view to a width of 30px and a height of 40px

```
view.constrainSize(width: 30.0, height: 40.0)
```
#### Parameters

| Name| Type|
|:-|:-|
|**width (optional)**|CGFloat|
|**height (optional)**|CGFloat|
