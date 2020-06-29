#-------------------------------------------------------------------------------
# Builder
#-------------------------------------------------------------------------------
FROM openjdk:8-alpine as builder

RUN apk update; \
    apk add ca-certificates; \
    apk add make

WORKDIR /build

COPY . .

RUN make clean jar

#-------------------------------------------------------------------------------
# Application
#-------------------------------------------------------------------------------
FROM flink

WORKDIR /app

COPY --from=builder /build/target/nutrow*.jar app.jar
