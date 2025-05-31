@Entry
@Component
export struct ThemePage {
  build() {
    Column(){
        Row(){
          Image($r('app.media.ic_public_back'))
            .width(25)
            .height(25)
          Text("更换主题")
            .fontSize(24)
            .fontWeight(FontWeight.Bolder)
            .textAlign(TextAlign.Center)
            .width("100%")

        }
        .width("100%")
    }
    .width("100%")
    .height("100%")
  }
}