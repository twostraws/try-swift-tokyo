import Ignite

struct Border: HTML {
  var hex: String

  var body: some HTML {
    Divider()
      .style(.border, "1px solid \(hex)")
  }
}
