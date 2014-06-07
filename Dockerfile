FROM chriswk/dockerjava8

RUN wget -O - http://debian.neo4j.org/neotechnology.gpg.key | sudo apt-key add -

RUN echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list

RUN apt-get update

RUN apt-get install -y neo4j

ENTRYPOINT ["neo4j", "start"]