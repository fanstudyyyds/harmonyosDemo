import router from '@ohos.router'
@Entry
@Component
struct Test3 {


  build() {
    Column() {
      Column() {
        Text('页面二')
          .fontSize(30)


      }
      .width('100%')
      .height('100%')
    }
  }
}