# Security Cam v2
#  - Finds ip address webcam - used for detecting motion
# Version 1.10.00
FROM paradrop/workshop
MAINTAINER Paradrop Team <info@paradrop.io>

# Install dependencies.  You can add additional packages here following the example.
RUN apt-get update && apt-get install -y \
#	<package> \
	nodejs \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

ADD chute/*.py /usr/local/bin/.
ADD chute/run.sh /usr/local/bin/run.sh


CMD ["/bin/bash", "/usr/local/bin/run.sh"]
