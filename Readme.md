# CVE-2023-34034: Spring WebFlux Vulnerable Application
Using "**" as a pattern in Spring Security configuration for WebFlux creates a mismatch in pattern matching between Spring Security and Spring WebFlux, and the potential for a security bypass. This application is created for demonstration of how it can be dangerous for using the default configuration in spring webflux security config.

## Application
A simple Spring WebFlux application is developed for CVE analysis. The application has 2 routes /public and /admin. The admin route should only be accessible after providing credentials but due to this vulnerability it is accessible without authorisation 

## Running Using Docker File
First Build the application using docker build command:

``
docker build -t webflux-main .
``

Then, Run the application using docker run command:

``
docker run -p 9090:9090 webflux-main
``

In this case you can reach the app from http://localhost:9090/public


Note
This application has been created for the purposes of research. Please dont try to replication in production enviorment. 