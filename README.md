# Policy As Code

This repo contains an example of what policy as code would look like for an organizations autoamted governance implementation.

## Details

The automated governance implementation uses the Open Policy Agent as the policy engine.  Rego is the language OPA uses to write policies in.  This repo has policies by environment, simulating how once can apply more leaninet policies in lower environments, then make them more strict as the application deploys to higher-level environments.

This is a monorepository.  All applicaiton policies are in this repository.

The structure is as follows

|- root
|   |- organization-name
|   |   |- application-name
|   |   |   |- *.rego
