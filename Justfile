#!/bin/bash
render-prod: 
    helm template customized-chart \
        --values ./customized-chart/prod-values.yaml 
render-prod-debug: 
    helm template customized-chart \
        --values ./customized-chart/prod-values.yaml \
        --debug

render-stag: 
    helm template customized-chart \
        --values ./customized-chart/stag-values.yaml
render-stag-debug: 
    helm template customized-chart \
        --values ./customized-chart/stag-values.yaml \
        --debug