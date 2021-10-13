#!/bin/sh

if ps x |grep -v grep |grep -c multics.x64 >/dev/null
then
echo "Multics... ok"
else
date=`date`
echo "Restarting multics : $date" >> /var/log/autorun.log

echo "multics... restarting"
/var/etc/bin/multics.x64 -v -b -C /var/etc/multics.cfg > /var/log/multics.log & 
fi 