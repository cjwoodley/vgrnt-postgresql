set UBUNTU = bionic
echo 'This is $UBUNTU'
sudo add-apt-repository 'deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main'
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install -y postgresql-10
sudo systemctl start postgresql
