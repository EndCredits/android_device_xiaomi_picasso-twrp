#!/sbin/sh
APEX_LIST=$(ls /apex/)
for APEX in ${APEX_LIST}
do
umount /apex/${APEX}
rm -rf /apex/${APEX} 2&>/dev/null
done
