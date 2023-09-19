ARG VERSION=latest

FROM grafana/grafana-oss:${VERSION}
USER ${UID}:${GID}
ENV \
    GF_INSTALL_PLUGINS=https://grafana.com/api/plugins/natel-plotly-panel/versions/0.0.7/download;custom-plugin,grafana-piechart-panel,grafana-worldmap-panel,grafana-clock-panel,grafana-simple-json-datasource \
    GF_FEATURE_TOGGLES_ENABLE=publicDashboards

