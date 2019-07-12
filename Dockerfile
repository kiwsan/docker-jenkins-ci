FROM jenkins/jenkins:lts

USER root

RUN chmod -R a+x scripts

RUN /scripts/install-dotnet.sh