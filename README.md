# URLLivePreview
 
`URLLivePreview` is a swift Package to add a preview of a URL site.  This package integrates `LPLinkView` and `LinkPresentation`.

## Examples

<img src="https://user-images.githubusercontent.com/2520545/148405768-a080a0ab-f165-425c-8c22-c4fdc7687ca6.png" width=25% height=25%>

## Usage

### Installation

Add `URLLivePreview` package to your project.

In Xcode `File` -> `Add Packages...` then enter my project GitHub URL:
https://github.com/arbyruns/URLLivePreview

### Quick Start

```swift
import URLLivePreview
```

```swift
URLPreview(linkViewParameters: LinkViewParameters(url: "https://github.com/arbyruns/URLLivePreview", width: .infinity, height: 250, alignment: .center))
```

### List View

Create your links as `Strings`.

```swift

struct Link: Identifiable {
    var id = UUID()
    var string: String
}

    let links: [Link] = [
            "https://github.com/arbyruns/URLLivePreview",
            "https://github.com/arbyruns?tab=repositories"
    ]
        .map{Link(string: $0)}
```
Then within a `List` and a `ForEach` and pass `Links`.

### Complete Example

```swift
import SwiftUI
import URLLivePreview

struct Link: Identifiable {
    var id = UUID()
    var string: String
}


struct ContentView: View {
    let links: [Link] = [
            "https://github.com/arbyruns/URLLivePreview",
            "https://github.com/arbyruns?tab=repositories"
    ]
        .map{Link(string: $0)}

    var body: some View {
                List {
                    ForEach(links){ link in
                        URLPreview(linkViewParameters: LinkViewParameters(url: link.string, width: .infinity, height: 250, alignment: .center))
                    }
                }
                .listStyle(.inset)
    }
}
```
