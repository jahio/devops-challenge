# CareerPlug DevOps Challenge

This is the CareerPlug coding challenge for DevOps. Bellow you will find a set
of instructions on how to complete and submit the project. If you have any
questions at all please submit an issue or contact us directly!

## Introduction
This challenge will be completed using the starter Ruby on Rails project found
in this repository. To get started, fork the repository to your Github account.
Once you have completed the challenge and are ready for it to be reviewed,
please put in a pull request to the base repository.

## Instructions
You will be auto-scaling our background worker based on the number of jobs in
the Sidekiq queues.

There are three Sidekiq queues: low, default and critical. For the purposes of
this project, you can ignore how many jobs are in critical-- assume that queue
will never overflow. When the total of low and default pass certain configurable
thresholds, we want the cpats-staging-4-worker to either add a new server or
remove a server. Normally, we would have a single background server running. If
the queue rises above 5,000 we should have two. When the queue falls below 500,
it can come back to one again. Ideally these thresholds could be set using the
Amazon Console under Elastic Beanstalk > Configuration > Capacity >
Scaling Triggers.

## Getting Started

1. Copy the confing/application_sample.yml to config/application.yml and add the AWS credentials we have supplied.
1. Install Redis and start it on the default port.
1. Bundle and start your rails app.
1. Start sidekiq: ```bundle exec sidekiq```.
1. There are sample jobs in app/jobs that run in the three queues.

## Resources
The following gems have been installed in this project to help with this
challenge because they are all used by our rails project. Feel free to use or
not use any of these.

- aws-sdk Communicate with any AWS service (configured via application.yml)
- figaro Convert config/application.yml to ENV variables
- sidekiq Run background jobs from a redis database (configured via sidekiq.yml)
- sidekiq-cron Schedule background jobs (configured via schedule.yml)
