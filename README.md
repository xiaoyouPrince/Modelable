# Modelable
Codable 封装, 用于 JSON 转 Model

## TODO

1. 添加便捷方法: stirng -> JSONObj( dict / array)
2. model.mapping(jsonString:)
3. model.toJsonString (String by 移除code)

## 用法

## class

## struct

Modle key 数量小小于等于 JSON key 的数据量,
否则转换失败, 本质原因: 从 JSON 中获取 key 的 value = nil, 整个 model 被设置为 nil

处理方案:
1. Modle.keys <= JSON.keys
2. Keys 都设置为可选项, 这样对于解析到 nil 的内容, 就不会将整体设置为 nil


## class 和 struct 选择
如果你要对 model 来回修改建议选择 class, 例如场景: 编辑模块, 需要对被编辑对象来回修改操作
其余场景都选择 struct
官方说明: https://developer.apple.com/documentation/swift/choosing-between-structures-and-classes



