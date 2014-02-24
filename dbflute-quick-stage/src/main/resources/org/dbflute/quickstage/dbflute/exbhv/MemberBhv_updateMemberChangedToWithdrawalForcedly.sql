/*
 [df:title]
 外だしSQLで更新のExample
 
 [df:description]
 CustomizeEntityマークは不要で(宣言してはいけない)、
 ParameterBeanマークだけを宣言します。
  e.g. プログラム側の実装
  - - - - - - - - - - - - - - - - - - - - - - - - - -
  memberBhv.outsideSql().execute(...)
  - - - - - - - - - - - - - - - - - - - - - - - - - -
 
 補足：
   o この外だしSQLは Behavior で実装可能
    -> queryUpdate(entity, cb)
*/
-- !df:pmb!
-- !!AutoDetect!!

update MEMBER set MEMBER_STATUS_CODE = 'WDL'
 where MEMBER_NAME like /*pmb.memberName*/'S%'
