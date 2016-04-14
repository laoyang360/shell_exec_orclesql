#!/bin/bash
#--确保只运行oracle用户运行
if [ `whoami` != 'oracle' ]
then
echo "Error: You must be oracle to execute."
exit 99
fi
# 获取ORACLE_SID
ORACLE_SID=$ORACLE_SID

# ORACLE_SID=`cat /etc/oratab|grep ^$ORACLE_SID:|cut -f1 -d':'`
export ORACLE_SID

# 获取ORACLE_HOME
# ORACLE_HOME=`cat /etc/oratab|grep ^$ORACLE_SID:|cut -f2 -d':'`
ORACLE_HOME=$ORACLE_HOME
export ORACLE_HOME
PATH=$ORACLE_HOME/bin:$PATH
export PATH
$ORACLE_HOME/bin/sqlplus system/123456 as sysdba

#连接
conn system/123456

#--spool 写入文件
#--spool /tmp/sql.txt;
#--执行sql语句
select * from a_name;

#--执行sql文件
@/home/laoyang/oracle_test/test.sql

#--spool off
exit
