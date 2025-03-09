import Ignite

struct AccessComponent: DocumentElement {
  let language: SupportedLanguage
  private let venueMapUrl = "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12959.484415464616!2d139.4122493!3d35.7047894!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018e16a387013a3%3A0xcd9c50e33a16ff6b!2sTachikawa%20Stage%20Garden!5e0!3m2!1sen!2sjp!4v1720059016768!5m2!1sen!2sjp"
  private let accommodationMapUrl = "https://www.google.com/maps/d/u/0/embed?mid=1mBsqxzE2L_guJrg7nE96dJBlJUrZVoA&ehbc=2E312F&noprof=1"

  var body: some HTML {
    ZStack(alignment: .bottom) {
      Section {
        Spacer()
        Image("/images/footer.png", description: "background image of footer")
          .resizable()
          .frame(width: .percent(100%))
      }
      VStack {
        Text(String("Access", language: language))
          .horizontalAlignment(.center)
          .font(.title1)
          .foregroundStyle(.white)
          .padding(.top, .px(80))

        Section {
          Text(String("TACHIKAWA STAGE GARDEN", language: language))
            .font(.title3)
            .foregroundStyle(.white)
          Text(String("N1, 3-3, Midori-cho, Tachikawa, Tokyo<br>190-0014", language: language))
            .font(.lead)
            .foregroundStyle(.white)
        }
        .horizontalAlignment(.center)
        .margin(.top, .px(32))

        Grid {
          Image("/images/tachikawa_stage_garden.jpg", description: "images of the venue")
            .resizable()
            .aspectRatio(4 / 3, contentMode: .fit)
            .background(.white)
            .margin(.bottom, .px(16))
          Embed(title: "map", url: venueMapUrl)
            .aspectRatio(.r4x3)
            .margin(.bottom, .px(16))
        }
        .columns(2)
        .horizontalAlignment(.center)
        .frame(width: .percent(100%))
        .margin(.vertical, .px(8))

        Text(String("Suggested Nearby Accommodation", language: language))
          .horizontalAlignment(.center)
          .font(.title1)
          .foregroundStyle(.white)
          .margin(.top, .px(80))

        Embed(title: "Suggested Nearby Accommodation", url: accommodationMapUrl)
          .aspectRatio(.r16x9)
          .margin(.top, .px(32))

        Section {
          MainFooter(language: language)
            .foregroundStyle(.white)
          IgniteFooter()
            .foregroundStyle(.white)
        }.margin(.top, .px(160))
      }
      .frame(width: .percent(100%), alignment: .center)
      .ignorePageGutters(false)
    }
    .background(
      Gradient(
        colors: [.limeGreen, .skyBlue],
        type: .linear(angle: 0)
      )
    )
  }
}
