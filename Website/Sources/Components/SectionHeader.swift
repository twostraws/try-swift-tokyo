import Ignite

struct SectionHeader: HTML {
  let type: HomeSectionType
  let language: SupportedLanguage

  var body: some HTML {
    VStack {
      Text(String(type.rawValue, language: language))
        .horizontalAlignment(.center)
        .font(.title1)
        .fontWeight(.bold)
        .foregroundStyle(.bootstrapPurple)

      Border(hex: "#6f42c1")
    }
    .padding(.top, .px(80))
    .padding(.bottom, .px(16))
    .id(type.htmlId)
  }
}
