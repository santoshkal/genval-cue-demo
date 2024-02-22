## Cosign-verify 
`./genval --mode cue --reqinput ./inputs/cosign-verify.yaml --resource ClusterTask --policy ./cosign/common.cue --policy ./policies/cosign-verify.cue`


## Cosign Verify
`./genval --mode cue --reqinput ./inputs/cosign-sign.yaml --resource ClusterTask --policy ./cosign/common.cue --policy ./policies/cosign-sign.cue`

## GitHub status:
`./genval --mode cue --reqinput ./inputs/github-set-status.yaml --resource ClusterTask --policy ./cosign/multi-common.cue --policy ./policies/github-status.cue`

## Deploy
`./genval --mode cue --reqinput ./inputs/deploy.yaml --resource ClusterTask --policy ./cosign/multi-common.cue --policy ./policies/deploy.cue`

