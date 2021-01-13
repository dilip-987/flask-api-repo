FROM ubuntu:latest
#FROM jenkins/jenkins
#ENV PORT 3000
# Create app directory
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Installing dependencies
#COPY package*.json /usr/src/app/
#RUN rm -rf node_modules
#RUN npm install

ENV NODE_PATH=./src
ENV REACT_APP_BASE_URL=http://localhost:5000/
ENV REACT_APP_AG_GRID_LICENSE="–––––––––– License Key Start–––––––––––––\nCompanyName=Nana\nApp,LicensedApplication=Nana,LicenseType=SingleApplication,LicensedConcurrentDeveloperCount=1,LicensedProductionInstancesCount=0,AssetReference=AG-007641,ExpiryDate=4_April_2021_[v2]_MTYxNzQ5MDgwMDAwMA==02501823a658a777b517236e0ef75323\n–––––––––– License Key End––––––––––––––"


# Copying source files
#COPY . /usr/src/app

# Building app
#RUN npm run build
#EXPOSE 3000
#CMD [ "npm", "start"]
# Running the app
#CMD "npm" "start"
