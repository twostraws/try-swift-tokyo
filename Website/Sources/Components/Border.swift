import Ignite

struct Border: HTML {
  var hex: String

  var body: some HTML {
    Text(markdown: "<hr style=\"border: 1px solid \(hex);\">")
  }
}
