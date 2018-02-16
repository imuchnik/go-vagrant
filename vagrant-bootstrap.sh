echo "Downloading Go"
curl --silent https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz > /tmp/go.tar.gz
echo "Extracting Go"
tar -xvzf /tmp/go.tar.gz --directory /home/vagrant >/dev/null 2>&1
echo "Setting Go environment variables"
mkdir /home/vagrant/gopath
chmod -R 777 /home/vagrant/gopath
echo 'export GOROOT="/home/vagrant/go"' >> /home/vagrant/.bashrc
echo 'export GOPATH="/home/vagrant/gopath"' >> /home/vagrant/.bashrc
echo 'export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"' >> /home/vagrant/.bashrc
sudo yum -y install git
curl -LO https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
sudo mv jq-linux64 jq
sudo chmod +x ./jq
sudo cp jq /usr/bin

echo 'All done'
