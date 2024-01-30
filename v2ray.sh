sudo apt install curl unzip -y
curl -O https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh
sudo bash install-release.sh
sudo systemctl restart v2ray
sudo systemctl enable v2ray
sudo curl https://gist.githubusercontent.com/AdelHashem/a700168b214a66cb58e641649424b827/raw/23238cc315b446a479b29d4d5ba4a486fe532405/config.json > /usr/local/etc/v2ray/config.json 
# sudo cp config.json /usr/local/etc/v2ray/config.json
sudo systemctl restart v2ray
sudo apt install nginx -y
sudo curl https://gist.githubusercontent.com/AdelHashem/a700168b214a66cb58e641649424b827/raw/23238cc315b446a479b29d4d5ba4a486fe532405/v2ray.conf > /etc/nginx/conf.d/v2ray.conf
# sudo cp v2ray.conf /etc/nginx/conf.d/v2ray.conf

sudo curl https://gist.githubusercontent.com/AdelHashem/a700168b214a66cb58e641649424b827/raw/23238cc315b446a479b29d4d5ba4a486fe532405/localhost.crt > /etc/ssl/certs/localhost.crt
# sudo cp localhost.crt /etc/ssl/certs/localhost.crt
sudo curl https://gist.githubusercontent.com/AdelHashem/a700168b214a66cb58e641649424b827/raw/23238cc315b446a479b29d4d5ba4a486fe532405/localhost.key > /etc/ssl/private/localhost.key
# sudo cp localhost.key /etc/ssl/private/localhost.key
sudo systemctl stop sshd
sudo systemctl reload nginx
