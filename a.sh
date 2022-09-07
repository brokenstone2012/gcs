cd gcs
ip=$(curl ifconfig.me)
git pull origin
echo "ss://$(base64 <<< "chacha20:test123@$ip:6000")#gcs" > README.md
git commit -am 'ip' && git push -u origin main && cd ~  
