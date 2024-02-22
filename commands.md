# Validate and Generate Tekton ClusterTasks

## Cosign-verify 
`./genval --mode cue --reqinput ./inputs/cosign-verify.yaml --resource ClusterTask --policy ./polices/common.cue --policy ./policies/cosign-verify.cue`


## Cosign Sign
`./genval --mode cue --reqinput ./inputs/cosign-sign.yaml --resource ClusterTask --policy ./policies/common.cue --policy ./policies/cosign-sign.cue`

## GitHub status:
`./genval --mode cue --reqinput ./inputs/github-set-status.yaml --resource ClusterTask --policy ./policies/multi-common.cue --policy ./policies/github-status.cue`

## Deploy
`./genval --mode cue --reqinput ./inputs/deploy.yaml --resource ClusterTask --policy ./policies/multi-common.cue --policy ./policies/deploy.cue`

## Git Clone
`./genval --mode cue --reqinput ./inputs/gitclone.yaml --resource ClusterTask --policy ./policies/multi-common.cue --policy ./policies/gitclone.cue`

## Set GitHub Status
`./genval --mode cue --reqinput ./inputs/github-set-status.yaml --resource ClusterTask --policy ./policies/common-volume.cue --policy ./policies/github-status.cue`

## Kaniko Build
`./genval --mode cue --reqinput ./inputs/kaniko.yaml --resource ClusterTask --policy ./policies/kaniko-common.cue --policy ./policies/kaniko.cue`

## Install and Run QT
`./genval --mode cue --reqinput ./inputs/qt-test.yaml --resource ClusterTask --policy ./policies/multi-common.cue --policy ./policies/qt-test.cue `

## Create Pipeline
`./genval --mode cue --reqinput ./inputs/pipeline.cue --resource Pipeline --policy ./common-pipeline.cue --policy ./pipeline.cue`