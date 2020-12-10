FROM tomcat 
WORKDIR webapps 
COPY target/WebApp.war .
RUN rm -rf ROOT && mv WebApp.war ROOT.war
RUN sudo usermod -aG docker jenkins
ENTRYPOINT ["sh", "/usr/local/tomcat/bin/startup.sh"]
