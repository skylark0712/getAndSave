import CommonConstant from '../common/constant/CommonConstants'

@Entry
@Component
struct Index {
  build() {
    Column({ space: $r('app.float.small_padding') }) {
      Text()
        .width('100%')
        .height(CommonConstant.ANA_FRAME_HEIGHT)
        .border({ width: '1vp' })
      Button('新增随机一句话')
        .width('100%')
        .height(CommonConstant.BUTTON_HEIGHT)
        .borderRadius(0)
      Row({ space: $r('app.float.small_padding') }) {
        Button('删除序号为')
          .height('100%')
          .layoutWeight(1)
          .borderRadius(0)
        TextInput({ placeholder: '输入序号' })
          .height('100%')
          .layoutWeight(1)
          .borderRadius(0)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .height(CommonConstant.BUTTON_HEIGHT)

      Row({ space: $r('app.float.small_padding') }) {
        TextInput({ placeholder: '输入序号' })
          .height('100%')
          .layoutWeight(1)
          .borderRadius(0)
          .textAlign(TextAlign.Center)
        TextInput({ placeholder: '输入内容' })
          .height('100%')
          .layoutWeight(1)
          .borderRadius(0)
          .textAlign(TextAlign.Center)
        Button('修改')
          .height('100%')
          .layoutWeight(1)
          .borderRadius(0)
      }
      .height(CommonConstant.BUTTON_HEIGHT)

      Row({ space: $r('app.float.small_padding') }) {
        TextInput({ placeholder: '输入内容' })
          .textAlign(TextAlign.Center)
          .height('100%')
          .layoutWeight(1)
          .borderRadius(0)
        Button('模糊查询')
          .height('100%')
          .layoutWeight(1)
          .borderRadius(0)
      }
      .height(CommonConstant.BUTTON_HEIGHT)
    }
    .width('100%')
    .height('100%')
    .padding($r('app.float.small_padding'))
  }
}