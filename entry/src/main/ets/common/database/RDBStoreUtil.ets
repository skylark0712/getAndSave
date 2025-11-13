import { relationalStore } from "@kit.ArkData";
import { BusinessError } from '@kit.BasicServicesKit'

let rdbStore: relationalStore.RdbStore

/**
 * 数据库工具类
 *
 * @author 小生化
 * @date 2025/11/13 15:42
 */
export class RDBStoreUtil {
  /**
   * 创建数据库（构造器的写法）
   */
  constructor(context: Context, dbName: string = 'rdbStore') {
    const config: relationalStore.StoreConfig = { name: dbName, securityLevel: relationalStore.SecurityLevel.S1 }
    relationalStore.getRdbStore(context, config, (err, store) => {
      if (err) {
        console.error(`数据库创建失败，code is ${err.code}, message is ${err.message}`)
        return
      }
      console.info('创建数据库成功。')
      rdbStore = store
    })
  }

  /**
   * 执行语句
   */
  executeSQL(sql: string): void {
    rdbStore.executeSql(sql, (err: BusinessError) => {
      if (err) {
        console.error(`执行失败，code is ${err.code}, message is ${err.message}`)
        return
      }
      console.info('SQL语句执行成功。')
    })
  }
}