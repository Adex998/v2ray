curl -O https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh
bash install-release.sh
systemctl restart v2ray
systemctl enable v2ray
curl https://gist.githubusercontent.com/AdelHashem/a700168b214a66cb58e641649424b827/raw/23238cc315b446a479b29d4d5ba4a486fe532405/config.json > /usr/local/etc/v2ray/config.json 
# sudo cp config.json /usr/local/etc/v2ray/config.json
systemctl restart v2ray
apt install nginx -y
curl https://gist.githubusercontent.com/AdelHashem/a700168b214a66cb58e641649424b827/raw/23238cc315b446a479b29d4d5ba4a486fe532405/v2ray.conf > /etc/nginx/conf.d/v2ray.conf
# sudo cp v2ray.conf /etc/nginx/conf.d/v2ray.conf

curl https://gist.githubusercontent.com/AdelHashem/a700168b214a66cb58e641649424b827/raw/23238cc315b446a479b29d4d5ba4a486fe532405/localhost.crt > /etc/ssl/certs/localhost.crt
# sudo cp localhost.crt /etc/ssl/certs/localhost.crt
curl https://gist.githubusercontent.com/AdelHashem/a700168b214a66cb58e641649424b827/raw/23238cc315b446a479b29d4d5ba4a486fe532405/localhost.key > /etc/ssl/private/localhost.key
# sudo cp localhost.key /etc/ssl/private/localhost.key
systemctl stop sshd
systemctl reload nginx
