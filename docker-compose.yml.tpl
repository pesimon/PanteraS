panteras:
  dns: ${HOST_IP}
  image: ${REGISTRY}panteras/paas-in-a-box
  name: panteras
  net: host
  privileged: true

  environment:
    CONSUL_IP:               "${CONSUL_IP}"
    HOST_IP:                 "${HOST_IP}"
    GOMAXPROCS:              "${GOMAXPROCS}"

    START_CONSUL:            "${START_CONSUL}"
    START_CONSUL_TEMPLATE:   "${START_CONSUL_TEMPLATE}"
    START_DNSMASQ:           "${START_DNSMASQ}"
    START_HAPROXY:           "${START_HAPROXY}"
    START_MESOS_MASTER:      "${START_MESOS_MASTER}"
    START_MARATHON:          "${START_MARATHON}"
    START_MESOS_SLAVE:       "${START_MESOS_SLAVE}"
    START_REGISTRATOR:       "${START_REGISTRATOR}"
    START_ZOOKEEPER:         "${START_ZOOKEEPER}"

    CONSUL_APP_PARAMS:          "${CONSUL_APP_PARAMS}"
    CONSUL_TEMPLATE_APP_PARAMS: "${CONSUL_TEMPLATE_APP_PARAMS}"
    DNSMASQ_APP_PARAMS:         "${DNSMASQ_APP_PARAMS}"
    HAPROXY_RELOAD_COMMAND:     "${HAPROXY_RELOAD_COMMAND}"
    MARATHON_APP_PARAMS:        "${MARATHON_APP_PARAMS}"
    MESOS_MASTER_APP_PARAMS:    "${MESOS_MASTER_APP_PARAMS}"
    MESOS_SLAVE_APP_PARAMS:     "${MESOS_SLAVE_APP_PARAMS}"
    REGISTRATOR_APP_PARAMS:     "${REGISTRATOR_APP_PARAMS}"
    ZOOKEEPER_APP_PARAMS:       "${ZOOKEEPER_APP_PARAMS}"
    ZOOKEEPER_HOSTS:            "${ZOOKEEPER_HOSTS}"
    ZOOKEEPER_ID:               "${ZOOKEEPER_ID}"

  volumes:
    - "${RESOLV_CONF}:/etc/resolv.conf"
    - "/var/spool/marathon/artifacts/store:/var/spool/store"
    - "/var/run/docker.sock:/tmp/docker.sock"
    - "/var/lib/docker:/var/lib/docker"
    - "/sys:/sys"
    - "/tmp/mesos:/tmp/mesos"
