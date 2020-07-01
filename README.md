# fh-hmi-api-gateway

## Deploys the hmi api gateway in the respective environment.

This project is a tactical solution to provide audio recordings for online hearings. The project has been expedited due
to the Covid-19 outbreak and as such the design and implementation is subject to change in the future.

The main solution consists of 2 active-active loadbalanced Linux VMs running Wowza Streaming Engine 4.7.7 which then
store the audio output in Azure Blob Storage.

## Environments

The project will be deployed to the following environment for the time being:

* Shared Services Sandbox - Used for dev work
* Other environments will be added as and when a definitive decision is made pertaining to environments and subscription

## Testing

* The qa team needs to provide an update on the testing approach that needs to be followed.
