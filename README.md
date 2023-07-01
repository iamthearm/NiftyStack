# NiftyStack

A stack navigation view that works (not deprecated) on all iOS versions 14+.

Usage is pretty easy. Just import using Swift Package Manager and you're ready to go!

```swift
import SwiftUI
import NiftyStack

@main
struct MyCoolApp: App {

  var body: some Scene {
    WindowGroup {
      NiftyStack {
        MainMenuView()
      }
    }
  }

}
```
