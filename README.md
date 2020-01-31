ENPASS Sync Service via Webdav
------------------------------

INSTALLATION:

1. Before you build your docker image!
   
   Set webdav username and password that you will later use in Enpass app:
  
      cd <docker_build_files>
      
      ./setpassword.sh
  
2. Build you docker image.

    cd <docker_build_files>
    
    docker build -t <your_image_name>:latest .

3. Create container.

   docker run --name <your_container_name> -d -p <host_port>:8080 <your_image_name>:latest
   
   <host_port> can be any port you want webdav service to be exposed on.
  
   Enpass sync data will be stored in /var/www/webdav/enpass within the container.
  
   If you want enpass sync data to be persistent, create docker volume and attach to the container:
   
   docker volume create <your_volume_name>
   docker run --name <your_container_name> -d -p <host_port>:8080 -v <your_volume_name>:/var/www/webdav/enpass       <your_image_name>:latest
  
4. Configure Enpass App to sync over Webdav
   
   URL: <host_IP_address:port>
   
   Username: as set via ./setpassword.sh
   
   Password: as set via ./setpassword.sh
