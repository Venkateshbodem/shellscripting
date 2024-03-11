 registry="venkatesh21/docker_deploy"
 registryCredential="dockerhubid"
dockerImage=""



git branch: 'shellscript', credentialsId: 'a0ae9019-73d5-44c4-b829-83f1ecc9dd46', url: 'https://github.com/Venkateshbodem/shellscripting.git'

dockerImage=$(docker build -t "$registry:$BUILD_NUMBER" .)

docker login -u venkatesh21 -p Venkatesh@21
docker push "$registry:$BUILD_NUMBER"


docker rmi "$registry:$BUILD_NUMBER
