//继承模式，只能写全局
@Styles function fillScreen() {
  .width('100%')
  .layoutWeight(1)
}


@Entry
@Component
struct Index {
  ////局部公共样式
  @Styles fillScreen_1(){
    .width('100%')
    .layoutWeight(1)
  }
  //局部公共样式
  @State message: string = 'Hello World'

  build() {
    Column() {
      Text('ahhh').fillScreen()
      Text('ahhh').fillScreen_1()
    }
  }
}