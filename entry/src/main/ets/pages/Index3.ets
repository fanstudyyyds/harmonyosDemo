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
//全局公共样式
@Styles function fillScreen(){
  .width('100%')
  .layoutWeight(1)
}


//引入
import { Header } from '../components/CommonComponents'

//全局自定义构建函数
@Builder function ItemCard(item: Item) {
  Row() {
    Image(item.image).width(100)
      .interpolation(ImageInterpolation.High) //设置图片清晰度
    Column() {
      Text('姓名：' + item.name)
        .phoneText()
      Text('电话：' + item.phone).fontColor('#36D')
    }
    .alignItems(HorizontalAlign.Start)
  }
  .width('100%')
  .backgroundColor('#EFEFEF')
  .padding(20)
  .borderRadius(20)
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
      Header({ title: '列表' })

      List({ space: 8 }) {
        ForEach(this.items, (item: Item) => {
          ListItem() {
            // ItemCard(item)
            this.Index_ItemCard(item)
          }
        })
      }.fillScreen()


    }
  }
  //局部自定义构建函数
  @Builder  Index_ItemCard(item: Item) {
  Row() {
    Image(item.image).width(100)
      .interpolation(ImageInterpolation.High) //设置图片清晰度
    Column() {
      Text('姓名：' + item.name)
        .phoneText()
      Text('电话：' + item.phone).fontColor('#36D')
    }
    .alignItems(HorizontalAlign.Start)
  }
  .width('100%')
  .backgroundColor('#EFEFEF')
  .padding(20)
  .borderRadius(20)
}
//局部公共样式
  @Styles  Index_fillScreen(){
  .width('100%')
  .layoutWeight(1)
}


}