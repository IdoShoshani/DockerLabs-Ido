# Table of Contents


## 000-Hands-On
 - [1.2. Lab](README.md#12-lab)
 - [1.2.1. Verify Docker installation](README.md#121-verify-docker-installation)
 - [1.3. Building our NodeJs server](README.md#13-building-our-nodejs-server)
 - [1.4. Test our server code](README.md#14-test-our-server-code)
 - [1.4.1. Start the server with:](README.md#141-start-the-server-with)
 - [1.4.2. Test if the server is running:](README.md#142-test-if-the-server-is-running)
 - [1.4.3. Stop the server](README.md#143-stop-the-server)
 - [1.5. Creating Docker containers](README.md#15-creating-docker-containers)
 - [1.5.1. Create docker file](README.md#151-create-docker-file)
 - [1.5.2. Verify that the file exists](README.md#152-verify-that-the-file-exists)
 - [1.5.3. Build the image](README.md#153-build-the-image)
 - [1.5.4. Verifying that the container was created](README.md#154-verifying-that-the-container-was-created)
 - [1.5.5. Testing the container](README.md#155-testing-the-container)
 - [1.5.6. Test if the server is running and listening:](README.md#156-test-if-the-server-is-running-and-listening)
 - [1.6. Second container with arguments](README.md#16-second-container-with-arguments)
 - [1.6.1. Creating Dockerfile for our second container](README.md#161-creating-dockerfile-for-our-second-container)
 - [1.6.2. Building the second container](README.md#162-building-the-second-container)
 - [1.7. Create a Docker Hub account and repository](README.md#17-create-a-docker-hub-account-and-repository)
 - [1.7.1. Create a new repository](README.md#171-create-a-new-repository)
 - [1.7.2. Build this image under our registry account](README.md#172-build-this-image-under-our-registry-account)
 - [1.7.3. Upload the image to the docker hub](README.md#173-upload-the-image-to-the-docker-hub)
 - [1.7.4. Verify that the image pushed to docker hub](README.md#174-verify-that-the-image-pushed-to-docker-hub)
 - [1.8. Docker volumes](README.md#18-docker-volumes)
 - [1.8.1. Map volumes with -v](README.md#181-map-volumes-with--v)
 - [1.8.2. Map volumes with --mount](README.md#182-map-volumes-with---mount)
 - [1.8.3. Execute a container with mount](README.md#183-execute-a-container-with-mount)
 - [1.8.4. Writing file to the mount](README.md#184-writing-file-to-the-mount)
 - [1.8.5. Verify that the file was written to the host](README.md#185-verify-that-the-file-was-written-to-the-host)


## 001-DockerCli
 - [`docker run`](README.md#docker-run)
 - [`docker run <command>`](README.md#docker-run-command)
 - [`docker run -it`](README.md#docker-run--it)
 - [`docker run -d`](README.md#docker-run--d)
 - [`docker run -name`](README.md#docker-run--name)
 - [`docker run -p`](README.md#docker-run--p)
 - [`docker run -a`](README.md#docker-run--a)
 - [`docker ps`](README.md#docker-ps)
 - [`docker rm`](README.md#docker-rm)
 - [`docker exec`](README.md#docker-exec)
 - [`docker cp`](README.md#docker-cp)
 - [`docker commit`](README.md#docker-commit)


## 002-DockerFile
 - [The Task](README.md#the-task)
 - [Step 01 - Write server code](README.md#step-01---write-server-code)
 - [Step 02 - Test the `server.js` code](README.md#step-02---test-the-serverjs-code)
 - [Step 03 - Write `Dockerfile`](README.md#step-03---write-dockerfile)
 - [Step 04 - Build the image form the Dockerfile](README.md#step-04---build-the-image-form-the-dockerfile)
 - [Step 05 - Push the image to DockerHub](README.md#step-05---push-the-image-to-dockerhub)
 - [05.01 - Login to DockerHub](README.md#0501---login-to-dockerhub)
 - [05.02 - Push the image to DockerHub](README.md#0502---push-the-image-to-dockerhub)
 - [05.03 - Verify the push](README.md#0503---verify-the-push)
 - [Step 06 - Test the image](README.md#step-06---test-the-image)
 - [Step 06.01 - Spin the container](README.md#step-0601---spin-the-container)
 - [Step 06.02 - Test the server](README.md#step-0602---test-the-server)
 - [Step 07 - Clean up](README.md#step-07---clean-up)


## 003-DockerFile-MultiStage


## 004-LocalRegistry
 - [01. Create a basic local registry](README.md#01-create-a-basic-local-registry)
 - [02. Prepare the local images](README.md#02-prepare-the-local-images)
 - [02.01. Download busybox image](README.md#0201-download-busybox-image)
 - [02.01. Tag the image with the local registry prefix](README.md#0201-tag-the-image-with-the-local-registry-prefix)
 - [02.02. Push the image to the local registry](README.md#0202-push-the-image-to-the-local-registry)
 - [03. Test local images](README.md#03-test-local-images)


## 008-crictl


## 009-multistage


