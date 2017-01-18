FROM quay.io/pires/docker-elasticsearch-kubernetes:2.4.1

RUN /elasticsearch/bin/plugin  install royrusso/elasticsearch-HQ/v2.0.3
RUN /elasticsearch/bin/plugin  install license
RUN /elasticsearch/bin/plugin  install marvel-agent
RUN /elasticsearch/bin/plugin  install lmenezes/elasticsearch-kopf/v2.1.2

RUN echo 'node.box_type: ${DATA_NODE_TYPE}'  >> /elasticsearch/config/elasticsearch.yml
