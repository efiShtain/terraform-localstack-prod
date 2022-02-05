# Terraform - Localstack/AWS

This is a sample project, demonstrate a way to structure a terraform project to support Localstack and AWS with least amount of code duplication (and no bash sorcery)

There might be other tools which allow doing the same thing (like terragrunt), there are times where this tools can't be used. In this cases the following offer might be a nice solution.

# Directory Structure

| Directory | Purpose                          |
| --------- | -------------------------------- |
| local     | localstack production terraform  |
| prod      | main production terraform        |
| resources | module holding actual resources` |

## Difference between local / prod

The main difference between the local/prod directories is the terraform backend.

When working locally (with localstack) there is no reason to work with an s3 backend and a DynamoDB table for locking.

Since terraform does not allow conditionally disable the backend, we have to use basically two different terraforms

Another difference is the provider. Localstack requires overrides of many fields in the provider, so having it hard coded here instead of a complicated dynamic block make stuff more readable.

## Running

If you want to work against localstack, just run terraform from the local directory
In case you want real resources, run terraform from the prod directory
