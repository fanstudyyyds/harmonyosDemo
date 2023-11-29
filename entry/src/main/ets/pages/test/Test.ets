@Entry
@Component
struct Test {
  @Builder ItemCard(name: string) {
    Row() {
      Text('你好' + name)
    }

  }

  build() {
    Column() {
      this.ItemCard('张三')
    }
  }
}