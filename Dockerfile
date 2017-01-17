FROM quay.io/pires/docker-elasticsearch-kubernetes:2.4.1

RUN /elasticsearch/bin/plugin install royrusso/elasticsearch-HQ/v2.0.3
RUN /elasticsearch/bin/plugin  install license
RUN /elasticsearch/bin/plugin  install marvel-agent
