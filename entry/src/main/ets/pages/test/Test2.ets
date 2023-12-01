import router from '@ohos.router'
@Entry
@Component
struct Test2 {


  build() {
    Column() {
      Column() {
        Text('页面一')
          .fontSize(30)

        Button('click....')
          .width('40%')
          .height(50)
          .onClick(()=>{
            //去第二个页面
            router.pushUrl({
              url:"pages/test/test3"
            })
          })
      }
      .width('100%')
      .height('100%')
    }
  }
}