#FROM debian:buster-20201012-slim
FROM debian:stretch-20200327-slim
COPY upgrade.sh /tmp/upgrade.sh
RUN /tmp/upgrade.sh
