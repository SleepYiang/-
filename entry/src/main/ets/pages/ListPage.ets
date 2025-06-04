import { router } from "@kit.ArkUI"

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
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/ThemePage'
                  })
                })
             }
          }
          .width("100%")
          .height(40)
        .margin({top:15})
        //三个按钮可选项
           Row(){
            Column(){
              Text($r('app.string.all'))
                .fontSize(20)
            }
          }
        Row(){
          Column(){

          }
        }
        Column(){
          //待办事项的列表
        }
        .layoutWeight(1)
      }
        .backgroundColor($r("app.color.background"))
        .width("100%")
        .height("100%")

      }
  }

  //水一下

//再水一下
// PYTHo
// 学习水一条
