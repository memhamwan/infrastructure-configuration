# Fleet apps

## How to install

Create this gitrepo in the Rancher CD interface:

```yaml
apiVersion: fleet.cattle.io/v1alpha1
kind: GitRepo
metadata:
  name: fleet-apps
  namespace: fleet-local
spec:
  branch: master
  clientSecretName: fleet-apps
  repo: https://github.com/memhamwan/infrastructure-configuration
  targets:
  - clusterSelector: {}
  paths:
  - fleet
```