@Entry
@Component
struct Index {
  build() {
    Row() {
      Column({space:50}) {
        //图片布局
        Row() {
          Image($r('app.media.logo'))
            .width(100)
            .height(100)
        }
        .margin(20)
        //文字布局
        Column({space:10}) {
            Text("欢迎使用代办清单")
              .fontSize(25)
              .fontWeight(FontWeight.Bold)
            Text("代办清单让生活简单点~")
              .fontSize(25)
              .fontWeight(FontWeight.Bold)
        }
        .justifyContent(FlexAlign.Center)
        //按钮布局
        Row(){
          Button("由此体验👉")
            .type(ButtonType.Normal)//按键样式
            .stateEffect(true)//按压状态显示
            .fontSize(25)
            .backgroundColor($r("app.color.button_background"))
            .height(70)
            .borderRadius(15)
            .onClick(()=>{

            })
        }
      }
      .width("100%")
    }
    .backgroundColor("#F6F6F6")
    .height("100%")
  }
  //设置弹窗消息

}