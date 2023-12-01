/*
 * 循环渲染:
 *  语法+键值生成函数
 * */
@Entry
@Component
struct Loop {
  @State product: string[] = ['PC', '问界汽车', "平板", `手环`]
  // @State product:string[] = ['PC','问界汽车',"平板",'PC',`手环`]

  @State  harmony_dixin:object[] = [
    {
      id:'001',
      title:'helloworld',
      content:'入门代码编写'
    },
    {
      id:'002',
      title:'跳转',
      content:'多种语言页面跳转'
    },
    {
      id:'003',
      title:'ArkTS语言',
      content:'详细学习arkts语法内容'
    },
  ]

  build() {
    Row() {
      Column() {
        Text('循环渲染数据')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Divider()
        ForEach(this.harmony_dixin, (item) => {
          Row() {
            Text(`${item.id}-${item.title}`).fontSize(30)
          }
        }, (item) => {
          return item
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}