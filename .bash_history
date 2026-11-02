ls
exit
ls
sudo apt update
sudo apt install ./my-vpn-config_0.1-1_all.deb 
dpkg -l my-vpn-config 
dpkg -L my-vpn-config 
make-cadir ~/easy-rsa
cd easy-rsa/
./easyrsa init-pki
ls
./easyrsa build-ca
ls
ls pki/ca.crt pki/private/ca.key 
openssl x509 -in pki/ca.crt -noout -subject -dates 
openssl x509 -in pki/ca.crt -noout -subject -dates -issuer
sudo apt update
sudo apt install easy-rsa
mkdir ~easy-rsa
ln -s /usr/share/easy-rsa/* ~/easy-rsa/
ls
rm -r '~easy-rsa'/
rm -r easy-rsa/
mkdir ~/easy-rsa
ls
ln -s /usr/share/easy-rsa/* ~/easy-rsa/
ls
chmod 700 ~/easy-rsa/
cd easy-rsa/
ls
./easyrsa init-pki
ls
cd
cd ~/easy-rsa/
ls
cd pki/
ls
cd ..
sudo nano ~/easy-rsa/vars
./easyrsa build-ca
sudo apt update
sudo apt install openvpn
./easyrsa gen-req server nopass
./easyrsa sign-req server server
sudo cp ~/easy-rsa/pki/issued/server.crt /etc/openvpn/server/
sudo cp ~/easy-rsa/pki/private/server.key /etc/openvpn/server/
sudo cp pki/ca.crt /etc/openvpn/server/
openvpn --genkey --secret ta.key
sudo cp ta.key /etc/openvpn/server/
cd
mkdir -p ~/clients/keys
chmod -R 700 ~/clients/
cd easy-rsa/
./easyrsa gen-req silmaril-1 nopass
./easyrsa sign-req client silmaril-1
sudo cp ta.key ~/clients/keys/
sudo cp ~/easy-rsa/pki/ca.crt ~/clients/keys/
cp pki/issued/silmaril-1.crt ~/clients/keys/
sudo chown ${USER}:${USER} ~/clients/keys/*
cd
sudo cp /usr/share/doc/openvpn/examples/sample-config-files/server.conf.gz /etc/openvpn/server/
cd /etc/openvpn/server/
sudo gzip -d server.conf.gz 
sudo nano /etc/openvpn/server/server.conf 
sudo vim /etc/openvpn/server/server.conf 
sudo vim /etc/sysctl.conf 
sudo sysctl -p
cd ..
cd
ls
ls -la
vim iptables.sh
ls
sudo chmod +x iptables.sh 
ip a
sudo ./iptables.sh eth0 udp 1194
vim iptables.sh
sudo ./iptables.sh eth0 udp 1194
vim iptables.sh
sudo ./iptables.sh eth0 udp 1194
sudo iptables -L -v -n
sudo apt install iptables-persistent -y
sudo netfilter-persistent-save
sudo netfilter-persistent save
sudo systemctl -f enable openvpn-server@server.service
sudo systemctl start openvpn-server@server.service
sudo systemctl status openvpn-server@server.service 
mkdir -p ~/clients/files
cp /usr/share/doc/openvpn/examples/sample-config-files/client.conf ~/clients/base.conf
sudo vim ~/clients/base.conf 
sudo vim ~/clients/make_config.sh
sudo chmod 700 ~/clients/make_config.sh 
sudo chown ${USER}:${USER} ~/clients/make_config.sh 
cd ~/clients/
./make_config.sh silmaril-1
sudo vim make_config.sh 
./make_config.sh silmaril-1
ls
cd files/
ls
base64 -w 0 silmaril-1.ovpn 
rm silmaril-1.ovpn 
cd ..
ls
./make_config.sh silmaril-1
cd files/
ls
cd
ls ~/easy-rsa/pki/private/
cp ~/easy-rsa/pki/private/silmaril-1.key ~/clients/keys/
cd clients/
ls
cd files/
ls
rm silmaril-1.ovpn 
cd ..
./make_config.sh silmaril-1
cd files/
base64 -w 0 silmaril-1.ovpn 
cd
sudo cp ~/easy-rsa/pki/ca.crt keys/
sudo cp ~/easy-rsa/pki/ca.crt clients/keys/
cd clients/
ls
rm -r files/
./make_config.sh 
ls
ls -la keys/*
ls
./make_config.sh silmaril-1
ls
mkdir files
./make_config.sh silmaril-1
cd files/
ls
base64 -w 0 silmaril-1.ovpn 
ls
yc-user@fhmko4oie0q4fthusv42:~/clients/files$ grep -A    
grep -A 2 "<cert>" ~/clients/files/silmaril-1.ovpn
grep -A 2 "<key>" ~/clients/files/silmaril-1.ovpn
grep -A 2 "<cert>" ~/clients/files/silmaril-1.ovpn
cd ..
ls -la
ls -la keys/
ls
sudo vim make_config.sh 
sudo nano make_config.sh 
ls
cd files/
ls
rm silmaril-1.ovpn 
cd ..
ls
./make_config.sh 
cd si
cd files/
ls
cd ..
./make_config.sh silmaril-1
cd files/
ls
base64 -w 0 silmaril-1.ovpn 
ls
cd ..
grep -A 2 "<cert>" ~/clients/files/silmaril-1.ovpn
cd
cd easy-rsa/
vim /etc/openvpn/server/server.conf 
sudo vim /etc/sysctl.conf 
sudo vim ~/clients/base.conf 
cd
cd clients/
cd files/
ls
rm silmaril-1.ovpn 
cd ..
ls
./make_config.sh 
cd files/
ls
cd ..
./make_config.sh silmaril-1
cd files/
ls
base64 -w 0 silmaril-1.ovpn 
base64 -w o silmaril-1.ovpn 
base64 -w  silmaril-1.ovpn 
base64 -w 0 silmaril-1.ovpn 
cd ..\
sudo vim make_config.sh 
cd files/
ls
rm silmaril-1.ovpn 
cd ..
./make_config.sh silmaril-1
cd files/
ls
cd ..
sudo vim ma
sudo vim make_config.sh 
ls
sudo vim make_config.sh 
./make_config.sh silmaril-1
ls files/
cd files/
base64 -w 0 silmaril-1.ovpn 
cd ..
sudo vim make_config.sh 
base64 -w 0 silmaril-2.ovpn 
ls
cd files/
ls
rm silmaril-1.ovpn 
cd ..
./make_config.sh silmaril-2
./make_config.sh silmaril-1
cd files/
ls
rm silmaril-1.ovpn silmaril-2
rm silmaril-1.ovpn silmaril-2.ovpn 
ls
cd ...
cd ..
ls
./make_config.sh silmaril-2
./make_config.sh silmaril-1
cd files/
ls
rm silmaril-2.ovpn 
base64 -w 0 silmaril-1.ovpn 
ip a
sudo nano /etc/openvpn/server/server.conf 
ls
cd clients/
ls
cd files/
ls
rm silmaril-1.ovpn 
cd ..
./make_config.sh silmaril-1
cd files/
base64 -w 0 silmaril-1.ovpn 
cd
sudo vim /etc/openvpn/server/server.conf
sudo systemctl -w net.ipv4.ip_forward=1
sudo sysctl -w net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o eth0 -j MASQUERADE
ip a
sudo nano /etc/openvpn/server/server.conf 
sudo systemctl restart openvpn-server@server.service 
ды
ls
vim iptables.sh 
cd clients/
ls
vim make_config.sh 
cd
sudo apt update
sudo apt install prometheus prometheus-node-exporter
systemctl status prometheus prometheus-node-exporter
curl -s http://localhost:9100/metrics | head
curl -s http://localhost:9090/-/healthy
sudo vim /etc/prometheus/alert.rules.yml
sudo vim /etc/prometheus/alert.rules.yml 
ls -la /etc/prometheus/alert.rules.yml 
promtool check config /etc/prometheus/prometheus.yml 
sudo systemctl reload prometheus
promtool check config /etc/prometheus/prometheus.yml 
promtool check rules /etc/prometheus/alert.rules.yml 
sudo vim /etc/prometheus/alert.rules.yml
promtool check rules /etc/prometheus/alert.rules.yml 
sudo vim /etc/prometheus/alert.rules.yml
promtool check rules /etc/prometheus/alert.rules.yml 
sudo vim /etc/prometheus/alert.rules.yml
promtool check rules /etc/prometheus/alert.rules.yml 
sudo vim /etc/prometheus/alert.rules.yml
promtool check rules /etc/prometheus/alert.rules.yml 
sudo vim /etc/prometheus/alert.rules.yml
promtool check rules /etc/prometheus/alert.rules.yml 
sudo vim /etc/prometheus/alert.rules.yml
promtool check rules /etc/prometheus/alert.rules.yml 
sudo vim /etc/prometheus/alert.rules.yml
promtool check rules /etc/prometheus/alert.rules.yml 
sudo systemctl restart prometheus
sudo vim /etc/prometheus/prometheus.yml 
sudo systemctl restart prometheus
promtool check config /etc/prometheus/prometheus.yml 
sudo vim /etc/prometheus/prometheus.yml 
promtool check config /etc/prometheus/prometheus.yml 
sudo systemctl restart prometheus
df -h
fallocate -l 2G test
ls
df -h
sudo vim /etc/prometheus/prometheus.yml 
sudo vim /etc/prometheus/alertmanager.yml
sudo cd /etc/prometheus/
ls
sudo cd /etc/
vim seting_prometheus
sudo chmod +x seting_prometheus 
ls
./seting_prometheus 
vim seting_prometheus
./seting_prometheus 
vim seting_prometheus
./seting_prometheus 
vim seting_prometheus
./seting_prometheus 
mkdir prometheus
mv ./seting_prometheus prometheus/
ls
ls-la prometheus/
ls prometheus/
sudo cp /etc/prometheus/alertmanager.yml alert.rules.yml prometheus.yml prometheus/
ls prometheus/
sudo cp /etc/prometheus/prometheus.yml prometheus/
sudo cp /etc/prometheus/alert.rules.yml prometheus/
ls prometheus/
tar -cvf prometheus/
tar -cvf prometheus.tar prometheus/
ls
tar -tvf prometheus.tar
vim install_prometheus.sh
rm -r prometheus.tar 
mv install_prometheus.sh prometheus/
tar -cvf prometheus.tar prometheus/
tar -tvf prometheus.tar
