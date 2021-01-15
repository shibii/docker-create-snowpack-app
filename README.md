# docker-create-snowpack-app

This sample project shows how to set up a create-snowpack-app project to run its development environment inside a container.

The 'mount-setup.sh' script spins up a container that generates the project, in this case using svelte template. The project is generated into a mounted host folder named 'app'. After create-snowpack-app has generated the project the script sets up user/group privileges so that both the host user and the container user can manage the files. An arbitrary group id 1030 is used as the shared gid for this to work.

The 'docker-compose.dev.yml' spins up a container that serves the actual snowpack dev environment on port 8080.

In order for the HMR to work one must set the desired devOptions.hostname in snowpack config. This would likely be the hosts ip.
