# boot-helloworld-ci


Demonstration of a basic concourse pipeline with a Spring Boot App localy on your laptop/Desktop


## Step 1 - Install concourse

` $ vagrant init concourse/lite # creates ./Vagrantfile `

` $ vagrant up                  # downloads the box and spins up the VM `

## Step 2 - Download the fly CLI

TODO

## Step 3 - Target the concourse instance 

` $ fly -t myci login -c http://192.168.100.4:8080 `

## Step 4 - Install PCF Dev

TODO

## Step 5 - Clone the Github repo

TODO

## Step 6 - Trigger a build.

TODO



