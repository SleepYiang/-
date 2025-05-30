@Entry
@Component
struct AddPage {
  build() {
    Column(){
      //返回按钮的添加
      Row(){
        Image($r("app.media.ic_public_back"))
          .width(40)
          .height(40)
        Text('新增任务')
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
      }
    }
    .width("100%")
    .height("100%")
  }
}