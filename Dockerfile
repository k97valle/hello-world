FROM public.ecr.aws/docker/library/eclipse-temurin:17-ubi9-minimal
WORKDIR /opt/app

COPY /target/demo-*.jar /opt/app/ROOT.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","-XX:+UseZGC","-Xmx800m","ROOT.jar"]