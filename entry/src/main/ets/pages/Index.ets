import { Test } from '@ohos-test/library'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold).onClick(() => {
          this.message = new Test.TestDemo().sayHello();
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}