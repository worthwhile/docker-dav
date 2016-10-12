# A Fileserver based Nginx dav

use:
> docker run -d --name dav -v /(your file path):/home -p (serve port):80 -p (upload port):8080 simcu/dav

Test:
> curl --request PUT --data-binary "@new.py" --header "Content-Type: application/octet-stream" http://127.0.0.1:(upload port)/new.py.txt