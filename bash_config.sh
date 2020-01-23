
sudo apt install -y vim git snap virtualbox
alias ll="ls -al"

# For development
sudo snap install code --classic
# See https://digitalfortress.tech/tutorial/setting-up-git-prompt-step-by-step/ to setup git prompt

sudo snap install docker

# If modifying ISOs: https://itsubuntu.com/install-cubic-ubuntu-custom-ubuntu-iso-creator/
sudo apt-add-repository ppa:cubic-wizard/release
sudo apt update
sudo apt install cubic

# Get latest open-jdk
sudo apt install default-jdk

# If running scala in SBT: https://www.scala-sbt.org/1.x/docs/Installing-sbt-on-Linux.html
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo apt-key add
sudo apt-get update
sudo apt-get install sbt
#Get nextcloud somehow.
echo "Hey, login to nextcloud so files are where build.sbt expects them."

# To setup git prompt
echo "See this repo to setup git prompt: https://github.com/jimeh/git-aware-prompt"

# Install keybase: https://keybase.io/docs/the_app/install_linux
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
sudo apt install ./keybase_amd64.deb
run_keybase

# For spotify
sudo snap install spotify

# Write code to copy the latest of [k9s, kubectx, kubens] to /usr/local/bin and chmod 0755. Also, maybe create ~/.k9s.
