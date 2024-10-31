 # DESCRIPTION
This directory is houses the 3 main repositories the maintains the project life cycle of my portfolio application (People)

# STEPS TO GET THINGS STARTED
1. First Run the bash script called init.sh with the command 'bash init.sh'
    That will use the resources in the infrustructure directory to provision a cluster using terraform. and install argocd on it.

2. The run the bash script called 'deploy-appOf-app.sh' with the command 'bash deploy-appOf-app.sh' to deploy the first app of apps to ARGO CD
    
3. You may then be required to run the destroy.sh with the command 'bash destroy.sh' to remove all cluster from aws. This tears everything down.

4. The directory know as 'architecture' contains an architecture diagram of the project form the app to the CICD.


# DIRECTORIES
1. architecture : Contains the architecture diagram
2. people: People directory contains the code base of a flask application which has nginx serving the frontend as a reverse proxy and has a mongo databae to persist data
3. infrustructure: This contains the terraform code and some yaml files to provision the cluster and deploy argocd on it
4. gitops: This directory main contains helm files. This is where the app of apps have been saved. This part is using the umbrella chart structure.