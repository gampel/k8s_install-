API_SERVER_IP=b19188c1-eu-de.lb.appdomain.cloud 
API_SERVER_PORT=6443
helm install cilium cilium/cilium --version 1.9.4 \
    --namespace kube-system \
    --set k8sServiceHost=$API_SERVER_IP \
    --set k8sServicePort=$API_SERVER_PORT
