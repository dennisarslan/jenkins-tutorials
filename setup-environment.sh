echo "This script will set up the Jenkins and Ubuntu containers for the tutorial."
echo "The only thing it really does is install some packages, set up SSH keys and enable the SSH-server on Ubuntu."
cd Docker/Denkins
./run.sh
cd ../Denbuntu
./run.sh
