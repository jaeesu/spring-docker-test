#${appplication_name}

FROM gradle:8.2.1-jdk11

ARG project_path
ARG application_name


WORKDIR /build
COPY ./src /build
# shell / dockerfile 경로 공부하기

#RUN cd /build/${application_name}

#RUN #/build/gradlew clean :${application_name}:build
RUN gradle :${application_name}:clean --parallel
RUN gradle :${application_name}:build --parallel
#RUN #gradle clean build -x test --parallel
#RUN chmod -R 755 /build/${application_name}/build/libs/${application_name}-0.0.1-SNAPSHOT.jar

RUN echo "#!/bin/bash" > run.sh
RUN echo "" >> run.sh
RUN echo "sh -c \"java -jar /build/${application_name}/build/libs/${application_name}-0.0.1-SNAPSHOT.jar\"" >> run.sh

EXPOSE 8080

#CMD ["apt", "update"]
#CMD ["apt", "install", "vim"]

#ENTRYPOINT ["java", "-jar", "/build/${application_name}/build/libs/${application_name}-0.0.1-SNAPSHOT.jar"]

ENTRYPOINT ["sh", "run.sh"]