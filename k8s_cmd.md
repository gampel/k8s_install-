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


To print a join command for worker/slave node,
kubeadm token create --print-join-command

But if you need to join a new control plane node, that won't work as you need to recreate a new key for the control plane join command. This can be done with three simple steps.

01.) re upload certs in the already working master node
sudo kubeadm init phase upload-certs --upload-certs
it will generate a new certificate key.

02.) print join command in the already working master node
kubeadm token create --print-join-command

03.) Add the --control-plane --certificate-key and execute.
 <join command from step 02> --control-plane --certificate-key <key from step 01>
To delete everything from a certain namespace you use the -n flag:

kubectl delete all --all -n {namespace}
kubectl get svc --namespace=kube-system
kubectl get endpoints kube-dns --namespace=kube-system
kubectl -n kube-system exec -ti cilium-ttqrk -- cilium bpf tunnel list
kubectl get configmap -n kube-system cilium-config -o yaml 
kubectl get pods,services,deployments,jobs,daemonset
