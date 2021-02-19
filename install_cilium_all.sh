API_SERVER_IP=b19188c1-eu-de.lb.appdomain.cloud 
API_SERVER_PORT=6443
helm install cilium cilium/cilium --version 1.9.4 \
    --namespace kube-system \
    --set k8sServiceHost=$API_SERVER_IP \
    --set hubble.listenAddress=":4244" \
    --set hubble.relay.enabled=true \
    --set prometheus.enabled=true \
    --set hubble.metrics.enabled="{dns,drop,tcp,flow,icmp,http}" \
    --set operator.prometheus.enabled=true \
    --set hubble.ui.enabled=true   --set k8sServicePort=$API_SERVER_PORT
