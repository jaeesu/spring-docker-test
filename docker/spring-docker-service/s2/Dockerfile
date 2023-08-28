#${appplication_name}

FROM gradle:8.2.1-jdk11

ARG application_name

ENV application_name ${application_name}

ARG JAR_FILE="/build/${application_name}/build/libs/${application_name}-0.0.1-SNAPSHOT.jar"
ENV JAR_FILE ${JAR_FILE}

WORKDIR /build
COPY ./src /build

#RUN cd /build/${application_name}
#RUN cd /build/${application_name}

#RUN /build/gradlew clean :${application_name}:build
RUN gradle :${application_name}:clean --parallel
RUN gradle :${application_name}:build --parallel

#RUN gradle clean build -x test --parallel
#RUN chmod -R 755 /build/${application_name}/build/libs/${application_name}-0.0.1-SNAPSHOT.jar

RUN echo "#!/bin/bash" > run.sh
RUN echo "" >> run.sh
RUN echo "sh -c \"java -jar /build/${application_name}/build/libs/${application_name}-0.0.1-SNAPSHOT.jar\"" >> run.sh

EXPOSE 8080

#CMD ["apt", "update"]
#CMD ["apt", "install", "vim"]
#
#CMD ["sh", "-c", "echo", "${application_name}"]
#CMD ["sh", "-c", "echo", "hello"]
#CMD ["sh", "-c", "\"java -jar /build/${application_name}/build/libs/${application_name}-0.0.1-SNAPSHOT.jar\""]

#CMD ["sh", "-c", "\"ls /build/spring-docker-test-s2/build/libs\""]
#CMD ["java", "-jar", "/build/spring-docker-test-s2/build/libs/spring-docker-test-s2-0.0.1-SNAPSHOT.jar"]
#CMD ["java", "-jar", "/build/spring-docker-test-s2/build/libs/spring-docker-test-s2-0.0.1-SNAPSHOT.jar"]
#CMD ["whoami"]

ENTRYPOINT ["sh", "run.sh"]

#ENTRYPOINT ["ls","-al", "${JAR_FILE}"]