IMAGE := alpine/fio
APP:="app/deploy-openesb.sh"

deploy-minikube:
	bash platform/deploy-minikube.sh

deploy-minikube-latest:
	bash platform/deploy-minikube-latest.sh

deploy-linkerd:
	bash app/deploy-linkerd.sh

deploy-canary-linkerd:
	bash app/deploy-canary-linkerd.sh

push-image:
	docker push $(IMAGE)

.PHONY: deploy-kind deploy-openesb deploy-dashboard deploy-minikube deploy-istio push-image
