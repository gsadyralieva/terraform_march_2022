      #!/bin/bash
      sudo yum install httpd -y
      sudo systemctl start httpd
      sudo echo “Hello from a ${environment} INSTANCE” >> /var/www/html/index.html
      