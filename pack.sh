YMD=backup_$(date +%Y%m%d_%H%M)
mv /home/user/latest.html /home/user/$YMD
python /home/user/crawl.py
diff /home/user/latest.html /home/user/$YMD > /dev/null
if [ $? != 0 ]; then
        /usr/local/bin/nativefierativefier --name yahoo-$YMD  https://tw.yhaoo.com /home/user/
fi      

