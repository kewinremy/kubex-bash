alias k="kubectl"

# GetSetKubernetesContext
function kc {
  if [[ $1 == 'ls' ]]
  then
    kubectl config get-contexts
  elif [[ $1 == 'set' ]]
  then
    kubectl config use-context $2
  else
    kubectl config current-context
  fi
}

# GetSetKubernetesNamespace
function kn {
  if [[ $1 == 'ls' ]]
  then
    kubectl get namespaces
  elif [[ $1 == 'set' ]]
  then
    kubectl config set-context --current --namespace=$2
  else
    kubectl config view --minify --output 'jsonpath={..namespace}
'
  fi
}