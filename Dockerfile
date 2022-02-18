FROM quay.io/openshift/origin-cli

MAINTAINER Marwan

WORKDIR ~

COPY label_clusters.sh label_clusters.sh

RUN chmod +x label_clusters.sh

CMD ["./label_clusters.sh"]
