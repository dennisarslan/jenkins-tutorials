##jenkins-tutorial##

This is a tutorial to set up a Jenkins 2.0 pipeline using a Jenkinsfile.

####Step 1.####
Set up your Jenkins and Ubuntu container and configure an SSH private/public key pair.

####Step 2.####
Install the required plug-ins, pipeline plugin.

####Step 3.####
Create a new job and select pipeline.

####Step 4.####

Select pipeline from SCM and pick url "git@github.com:dennisarslan/jenkins-tutorial.git"
Now set up authentication and paste the private key into Jenkins.

Select the path /Pipelines/HelloWorld/Jenkinsfile

####Step 5. ####

Run your newly installed pipeline.

####Step 6.####

Test the Parameters pipeline.
Create a new job and do the same, but select the path /Pipelines/Parameters2/Jenkinsfile.

####Step 7.####

Look how awesome Ansible is by creating a new job with /Pipelines/Ansible/Jenkinsfile or ...

Create your own pipeline. Create a few textboxes with the required parameters.

Now add a stage that will clone our Fabric config make sure Fabric is ran with the correct parameters.

An example command to run Fabric from a Jenkinsfile would be:

    sh "echo ./bin/stack --parameter1=${params.stack} --parameter2=${params.stack2} --parameter3=${params.destructive_build}"
