import { router } from "@kit.ArkUI"

@Entry
@Component
export struct ThemePage {
  build() {
    Column(){
        Row(){
          Image($r('app.media.ic_public_back'))
          .width(30)
          .onClick(()=>{
            router.back()
          })
            Text("更换主题")
              .fontSize(24)
              .fontWeight(FontWeight.Bolder)
              .textAlign(TextAlign.Center)
              .width("83%")

          Image($r('app.media.ic_public_todo'))
            .width(30)
            .fillColor(Color.Black)
            .onClick(()=>{
                this.confirmDialog()
            })

        }
        .margin({left:10,right:10})
        .width("100%")




    }
    .width("100%")
    .height("100%")
    .backgroundColor($r("app.color.background"))



  }




  //弹窗消息
  confirmDialog(){
      AlertDialog.show({
        message:'确认'
      })
  }
}