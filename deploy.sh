#!/bin/sh
kustomize edit set imagetag $repository:$commitId;
kustomize build overlays/test | kubectl apply --record -f -