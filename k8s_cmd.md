kubectl -n kube-system logs --timestamps <pod_name>
kubectl -n kube-system get pods -o wide
kubectl describe pod cilium-jnxkd -n kube-syste

https://kubernetes.io/docs/reference/kubectl/cheatsheet/


APISERVER=$(kubectl config view --minify | grep server | cut -f 2- -d ":" | tr -d " ")
SECRET_NAME=$(kubectl get secrets | grep ^default | cut -f1 -d ' ')
TOKEN=$(kubectl describe secret $SECRET_NAME | grep -E '^token' | cut -f2 -d':' | tr -d " ")

curl $APISERVER/api --header "Authorization: Bearer $TOKEN" --insecurem


helm install cilium cilium/cilium  --namespace=kube-system --set global.k8sServiceHost=b19188c1-eu-de.lb.appdomain.cloud --set global.k8sServicePort=6443


kubeadm token create --print-join-command


kubectl -n kube-system get cm kubeadm-config -o yaml

kubeadm token create --print-join-command  --certificate-key  sdfasjakjsfdhj364125443124
