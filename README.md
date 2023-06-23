# reference-architecture

An implementation of the azure n-tier reference architecture with ansible and terraform

Note: Requires a suitable container image

The command I use to run things:

podman run -it -v /home/jkingsto/Projects/reference-architecture:/runner/reference-architecture --privileged=true localhost/tfazonly /runner/reference-architecture/runner.sh

Just change the playbook runner points at

Things to improve on:

| | Full reference architecture running
| | Connecting it to AAP
| | Using surveys for relevant info
| | Day 2 operations
| | Figuring out the right way to do auth (currently requires the runner.sh script which runs az login. This is not going to work in the future!)

