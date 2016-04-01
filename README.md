# boot-helloworld-ci


Demonstration of a basic concourse pipeline with a Spring Boot App localy on your laptop/Desktop

![Pipeline](/doc/scree.png "Pipeline")

### Step 1 - Install concourse

` $ vagrant init concourse/lite # creates ./Vagrantfile `

` $ vagrant up                  # downloads the box and spins up the VM `

The web server will be running at 192.168.100.4:8080.

### Step 2 - Download the fly CLI

Next step would be to download the fly CLI. Open a brower and point it to: 192.168.100.4:8080. From the page downoad the fly tool and save it locally. Then make sure it is executable by running the following command:

` $ chmod +x fly `

### Step 3 - Target the concourse instance 

` $ fly -t myci login -c http://192.168.100.4:8080 `

### Step 4 - Install PCF Dev

Follow the instructions [here](https://docs.pivotal.io/pcf-dev). to install PCF Dev locally

### Step 5 - Clone the Github repo

` $ git clone https://github.com/schabiyo/boot-helloworld-ci.git `

### Step 6 - Trigger a build.

Create the pipeline by running the following command:

` $ ./fly -t myci set-pipeline -p boot-helloworld -c boot-helloworld-ci/ci/pipeline.yml `



