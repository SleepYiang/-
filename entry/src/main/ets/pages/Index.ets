import { promptAction, router } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  @State IsShow: boolean = false
  @State IsAgreement: boolean = false

  build() {
    Row() {
      Column({ space: 50 }) {
        //图片布局
        Row() {
          Image($r('app.media.logo'))
            .width(100)
            .height(100)
        }
        .margin(20)

        //文字布局
        Column({ space: 10 }) {
          Text("欢迎使用代办清单")
            .fontSize(25)
            .fontWeight(FontWeight.Bold)
          Text("代办清单让生活简单点~")
            .fontSize(25)
            .fontWeight(FontWeight.Bold)
        }
        .justifyContent(FlexAlign.Center)

        //按钮布局
        Row() {
          Button("由此体验👉")
            .type(ButtonType.Normal)//按键样式
            .stateEffect(true)//按压状态显示
            .fontSize(25)
            .backgroundColor($r("app.color.button_background"))
            .height(70)
            .borderRadius(15)
            .onClick(() => {
              this.showDialog()
            })
        }
      }
      .width("100%")
    }
    .backgroundColor("#F6F6F6")
    .height("100%")
  }

  //设置弹窗消
  showDialog() {
    if (this.IsShow==false){
      AlertDialog.show({
        title: ('服务协议和隐私政策'),
        message: ('请你务必审慎阅读、充分理解服务协议”和“隐私政策”各条款，包括但不限于：为了向您提供待办提醒等服务，我们需要向您的系统日历添加待办内容。你可以在系统设置中管理对应权限。你可阅读《服务协议》和《隐私政策》了解详细信息。如同意请点击“同意”开始接受我们的服务。'),
        autoCancel: false, //点击弹窗外是否取消弹层内容
        alignment: DialogAlignment.Center, //弹窗位置居中
        primaryButton: {
          value: ('拒绝'),
          action: () => {
            router.back()
          }
        },
        secondaryButton: {
          style: DialogButtonStyle.HIGHLIGHT,
          value: ('接受'),
          action: () => {
            this.IsShow=true
            promptAction.showToast({
              message:"welcome to TodoList"
            })
            //延时跳转页面
            setTimeout(()=>{
              router.replaceUrl({
                url:"pages/MainPage",
              })
            },2000)
          }
        }
      })
    }
  }
}