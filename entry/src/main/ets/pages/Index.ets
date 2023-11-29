class Item {
  name: string
  image: ResourceStr
  phone: string

  constructor(name: string, image: ResourceStr, phone: string) {
    this.name = name
    this.image = image
    this.phone = phone
  }
}
//继承模式，只能写全局
@Extend(Text) function phoneText() {
  .fontSize(20)
  .fontWeight(FontWeight.Bold)
}


@Entry
@Component
struct Index {
  private items: Array<Item> = [
    new Item('张三', $r('app.media.ic_public_contacts_filled'), '1823438638633'),
    new Item('李四', $r('app.media.ic_public_contacts_filled'), '1823438638633'),
    new Item('王五', $r('app.media.ic_public_contacts_filled'), '1823438638633'),
    new Item('赵六', $r('app.media.ic_public_contacts_filled'), '1823438638633'),
    new Item('赵六', $r('app.media.ic_public_contacts_filled'), '1823438638633'),
    new Item('赵六', $r('app.media.ic_public_contacts_filled'), '1823438638633'),
    new Item('赵六', $r('app.media.ic_public_contacts_filled'), '1823438638633'),
    new Item('赵六', $r('app.media.ic_public_contacts_filled'), '1823438638633'),
    new Item('赵六', $r('app.media.ic_public_contacts_filled'), '1823438638633'),
    new Item('赵六', $r('app.media.ic_public_contacts_filled'), '1823438638633'),
    new Item('赵六', $r('app.media.ic_public_contacts_filled'), '1823438638633'),
    new Item('赵六', $r('app.media.ic_public_contacts_filled'), '1823438638633'),
  ]
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row() {
        Image($r('app.media.ic_public_arrow_left_filled'))
          .width(30)
        Text('列表')
          .fontSize(30)
        Blank()
        Image($r('app.media.ic_public_refresh'))
          .width(30)

      }
      .width('100%')
      .height(30)
      .margin({ bottom: 20 })

      List({ space: 8 }) {
        ForEach(this.items, (item: Item) => {
          ListItem() {
            Row() {
              Image(item.image).width(100)
                .interpolation(ImageInterpolation.High)//设置图片清晰度
              Column() {
                Text('姓名：'+item.name)
                  .phoneText()
                Text('电话：'+item.phone).fontColor('#36D')
              }
              .alignItems(HorizontalAlign.Start)
            }
            .width('100%')
            .backgroundColor('#EFEFEF')
            .padding(20)
            .borderRadius(20)
          }
        })


      }.width('100%').layoutWeight(1)

    }
  }
}