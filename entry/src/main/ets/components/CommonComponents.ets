@Component
export  struct Header{

  private title:ResourceStr

  build(){
    Row() {
      Image($r('app.media.ic_public_arrow_left_filled'))
        .width(30)
      Text(this.title)
        .fontSize(30)
      Blank()
      Image($r('app.media.ic_public_refresh'))
        .width(30)

    }
    .width('100%')
    .height(30)
    .margin({ bottom: 20 })
  }
}