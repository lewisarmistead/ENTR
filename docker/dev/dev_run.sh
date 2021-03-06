# Run the docker environment
docker run -p 8888:8888 \
  --name ENTR-dev \
  entralliance/entr-dev:latest

# Open Jupyter Notebook in a browser (strategy 1)
# Look at the log output from docker run command. You will see at the end of the output a link which resembles the following:
#   open "http://127.0.0.1:8888/?token=[TOKEN]"

# Open Jupyter Notebook in a browser (strategy 2)
# To obtain token, log into the container and issue the following command in order to obtain the token required to log into Jupyter:
#   jupyter notebook list
# Navigate to the following link in a browser to log into Jupyter.
#   open "http://localhost:8888"


-------- IMPLEMENT THE FOLLOWING SECTION IF YOU WANT TO CONNECT YOUR LOCAL FILE SYSTEM TO DOCKER TO SHARE FILES -----------

# On Mac OS, uncomment the following lines to create a folder mounted by the docker image where data can be placed,
# accessible from within the docker container.
# cd ~
# mkdir entr

# Create a new container from the image (if the image doesn't yet exist, first run the script dev_build.sh)
#docker run -p 8888:8888 \
#  --name ENTR-dev \
#  --mount type=bind,source=/Users/c/entr,destination=/home/jovyan/host \
#  entralliance/entr-dev:latest


