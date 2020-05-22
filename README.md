This container simplifies running the `terraform` tool. Extending from `hashicorp/terraform:light`
it is configured to store both TF config and TF project state in the /terraform. You can use this
container to run the `terraform init` command as follows:

```sh
docker run --interactive --tty --rm \
  --volume my-project-state:/terraform \
  --volume $PWD:/project msb140610/terraform-runner init
```

The above comand will store `.terraform` (and subsequent state files) in the `my-project-state`
volume.
