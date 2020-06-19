# LANDRs stack

### Docker development setup
Download and build the dependant repositories by running the following command:
```bash
./setup.sh
```

Create a `.env` file  in the project root with the following environment variables:
```
SPARQL_USERNAME=fuseki_username
SPARQL_PASSWORD=fuseki_password
```

Optionally, run the following command to build the container images:
```bash
docker-compose build
```

Append the following line to your `/etc/hosts` file:
```
127.0.0.1    ld.landrs.org
```

To start the containers run the following command:
```bash
docker-compose up -d
```

If all is successful, you should be able to interact with the demo portal at [http://ld.landrs.org/demo](http://ld.landrs.org/demo).

#### Install NPM Packages in demo portal
To install packages for the demo portal you have to execute `npm` commands from within the container. For example, you
can install the `helmet` package using the following command:
```bash
docker-compose exec demo npm install --save helmet
```
