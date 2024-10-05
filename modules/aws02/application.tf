resource "kubectl_manifest" "applicationSet" {
  yaml_body = <<-EOF
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: AppOfApps
  namespace: argocd
  finalizers:
    - resources-finalizer.argocd.argoproj.io
spec:
  destination:
    namespace: argocd
    name: https://kubernetes.default.svc
  project: default
  source:
    path: path/to/our/appofapps/repo
    repoURL: https://gitlab.devops.usu.group/usu-operations/k8s-infrastructure/...
    targetRevision: main
    helm:
      valueFiles:
        - values.yaml
  syncPolicy:
    automated:
      prune: true
      selfHeal: true
    syncOptions:
      - CreateNamespace=true
EOF
}
