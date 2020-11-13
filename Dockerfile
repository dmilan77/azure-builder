FROM mcr.microsoft.com/azure-cli
COPY upgrade-alpine.sh /tmp/upgrade-alpine.sh
RUN /tmp/upgrade-alpine.sh
