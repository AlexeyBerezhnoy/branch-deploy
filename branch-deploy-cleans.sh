rm -rf /opt/branch-deploy/$1
rm /etc/nginx/conf.d/$1.localtest.me.conf
service nginx reload
