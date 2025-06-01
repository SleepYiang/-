import { router } from "@kit.ArkUI"

@Entry
@Component
export struct ThemePage {
  build() {
    Column(){
        Row(){
          Stack({alignContent:Alignment.Start}){
            Text("更换主题")
              .fontSize(24)
              .fontWeight(FontWeight.Bolder)
              .textAlign(TextAlign.Center)
              .width("100%")
            Image($r('app.media.ic_public_back'))
              .width(25)
              .height(25)
              .onClick(()=>{
                router.back()
              })
          }
          .margin({left:10,right:10})
        }
        .width("100%")
    }
    .width("100%")
    .height("100%")
  }
}