# Acme Corp Devops Challenge - Parte IAC

## Cómo se organiza el código?

El código utiliza la siguiente estructura

```
.
├── scripts
├── environments/
│   ├── develop.tfvars
│   ├── staging.tfvars
│   └── production.tfvars
├── live/
│   └── main.tf
└── modules/
    └── platform/
        └── main.tf
```

Donde:

* **scripts**: Carpeta para ubicar los scripts necesarios para el proceso de ci cd , sólo si es necesario para tu implementación.
* **environments**: Carpeta para ubicar los archivos tfvars correspondientes a cada ambiente.
* **live**: Carpeta en donde se expresa la infraestructura deseada a desplegar en cada ambiente, desde aquí se pueden instanciar tus módulos.
* **modules**: Carpeta para ubicar los módulos terraform necesarios en tu implementación.

# Importante!!
La estructura de carpetas en este proyecto es solo una referencia, puedes hacer los cambios que quieras,o crear una estructura completamente distinta,no te limites!!



# Create kubeconfig
```
kubectl config set-cluster kubernetes-prueba --certificate-authority=certificate-authority.pem --embed-certs=true --server=https://pedominguezbr8863.k8s.fagurto.dev:443 --kubeconfig=kube-prueba.kubeconfig
 
kubectl config set-credentials system:kube-scheduler --client-certificate=client-certificate.pem --client-key=client-key.key --embed-certs=true --kubeconfig=kube-prueba.kubeconfig
 
kubectl config set-context default --cluster=kubernetes-prueba --user=system:kube-scheduler --kubeconfig=kube-prueba.kubeconfig
*set win * explort linux
set KUBECONFIG=C:\devops-pruebilla\kit\acme-iac\certificado\kube-prueba.kubeconfig

kubectl config use-context default

# get credencial 
kubectl get secret default-token-ws58t -o jsonpath='{.data.ca\.crt}' && echo
kubectl get secret default-token-ws58t -o jsonpath='{.data.token}' | base64 --decode && echo



```