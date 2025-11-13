import CommonConstant from '../common/constant/CommonConstants'
import { RDBStoreUtil } from '../common/database/RDBStoreUtil'
import { common } from '@kit.AbilityKit'

/**
 * 首页
 *
 * @author 小生化
 * @date 2025/11/13 16:26
 */
@Entry
@Component
struct Index {
  private context = getContext(this) as common.UIAbilityContext
  rdbStoreUtil: RDBStoreUtil = new RDBStoreUtil(this.context)

  build() {
    Column({ space: $r('app.float.small_padding') }) {
      List()
        .width('100%')
        .height(CommonConstant.ANA_FRAME_HEIGHT)
        .border({ width: '1vp' })

      Row({ space: $r('app.float.small_padding') }) {
        Button('建表')
          .height('100%')
          .layoutWeight(1)
          .borderRadius(0)
          .onClick(() => {
            let sql = `CREATE TABLE IF NOT EXISTS ana (id INTEGER PRIMARY KEY AUTOINCREMENT, content TEXT NOT NULL);`
            this.rdbStoreUtil.executeSQL(sql)
          })
        Button('新增随机一句话')
          .height('100%')
          .layoutWeight(1)
          .borderRadius(0)
      }
      .width('100%')
      .height(CommonConstant.BUTTON_HEIGHT)

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