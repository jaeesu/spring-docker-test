FROM gradle:8.2.1-jdk11

ARG application_name
ENV application_name ${application_name}

WORKDIR /build
COPY ./src /build

RUN gradle build -x test --parallel --continue > /dev/null 2>&1 || true
RUN gradle :${application_name}:clean --parallel
RUN gradle :${application_name}:build --parallel

RUN echo "#!/bin/bash" > run.sh
RUN echo "" >> run.sh
RUN echo "sh -c \"java -jar /build/${application_name}/build/libs/${application_name}-0.0.1-SNAPSHOT.jar\"" >> run.sh

EXPOSE 8080

ENTRYPOINT ["sh", "run.sh"]