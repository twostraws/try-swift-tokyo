import Ignite

struct MainLayout: Layout {
  @Environment(\.page) var page
  let title: String
  let ogpLink: String

  var body: some HTML {
    Head {
      MetaTag(property: "og:image", content: ogpLink)
      MetaTag(name: "twitter:title", content: title)
      MetaTag(name: "twitter:image", content: ogpLink)

      if page.url.pathComponents.last == "_en" {
        RedirectMetaTag(to: URL(string: page.url.absoluteString.replacingOccurrences(of: "_", with: ""))!)
      }
    }

    Body()
  }
}
