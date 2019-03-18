CHART_NAME ?= aspnet-app
NAMESPACE_NAME ?= test
RELEASE_NAME ?= $(NAMESPACE_NAME)-$(CHART_NAME)

install-chart:
	helm upgrade --install --wait --force $(RELEASE_NAME) deployments/kubernetes/chart/$(CHART_NAME) --namespace $(NAMESPACE_NAME)  || (helm rollback --force $(RELEASE_NAME) 0 ; exit 1)

delete-chart:
	helm del --purge $(RELEASE_NAME)