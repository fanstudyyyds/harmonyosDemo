//继承模式，只能写全局
@Extend(Text) function texs_Text() {
  .fontSize(20)
  .fontWeight(FontWeight.Bold)
}


@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Text('ahhh').texs_Text()
    }
  }
}