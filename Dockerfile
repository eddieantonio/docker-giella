# Install on an Ubuntu LTS release
FROM ubuntu:18.04

# We'll install everything here:
WORKDIR /giella

# Get base Giella dependencies
RUN apt-get update -y && apt-get install -y wget &&\
        wget https://apertium.projectjj.com/apt/install-nightly.sh -O - | bash
RUN apt-get update -y
RUN apt-get install -y apertium-all-dev cg3 \
    autoconf automake libtool libsaxonb-java python-pip \
    python-lxml  python-bs4 python-unittest2 libxml-twig-perl antiword xsltproc \
    poppler-utils wget python-svn wv python-feedparser subversion openjdk-8-jdk cmake \
    python-tidylib python3-yaml libxml-libxml-perl libtext-brew-perl
EXPOSE 80

# TODO: At some point I should actually add the Giellatekno stuff....
CMD ["/bin/bash"]
