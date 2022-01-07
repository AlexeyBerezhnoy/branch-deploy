mkdir /opt/branch-deploy/$2
git clone $1 /opt/branch-deploy/$2 --branch $2
cat >/etc/nginx/conf.d/$2.localtest.me.conf <<EOL
server {
    server_name $2.localtest.me;
    location / {
        root /opt/branch-deploy/$2;
    }
}
EOL
service nginx reload
