@Entry
@Component
export struct MainPage {
  build() {
      Column(){
          Row(){
            Stack({alignContent:Alignment.End}){
              Text('我的任务')
                .fontSize(24)
                .fontWeight(FontWeight.Bold)
                .textAlign(TextAlign.Center)
                .width("100%")
              Image($r("app.media.ic_public_themes"))

                .width(25)
                .height(25)
                .margin({right:10})
             }
          }
          .width("100%")
          .height(40)
        }
        .width("100%")
        .height("100%")
      }
  }
