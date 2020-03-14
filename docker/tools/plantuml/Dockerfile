FROM ubuntu:szqh

# get jre
RUN apt-get install -y openjdk-11-jre-headless
RUN apt-get install -y graphviz ca-certificates

# get PlantUML in place
RUN mkdir /opt/plantuml
RUN wget https://netcologne.dl.sourceforge.net/project/plantuml/plantuml.jar -q --output-document=/opt/plantuml/plantuml.jar
ENV PLANTUML_JAR=/opt/plantuml/plantuml.jar

#ENTRYPOINT ["java", "-Djava.awt.headless=true", "-jar", "/opt/plantuml/plantuml.jar", "-p", "-charset", "utf-8"]
