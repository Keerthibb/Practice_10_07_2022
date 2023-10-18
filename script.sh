#!bin/bash
echo "checking the nginx status"
systemctl status nginx
if [ $? -eq 0 ]
then
echo "service is up and running"
else
sudo service nginx start # > /dev/null
echo "started the service now"
systemctl status nginx
fi


