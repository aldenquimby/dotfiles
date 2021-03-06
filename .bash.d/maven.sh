
# skipTests = skip Surefire (unit tests)
# skipITs = skip Failsafe (integration tests)
# maven.test.skip = skip test Compiler + Surefire + Failsafe
# maven.source.skip = do not build sources jars
# maven.artifact.threads = # threads for parallel artifact downloads

mvnci()  { MAVEN_OPTS='-XX:+TieredCompilation -XX:TieredStopAtLevel=1' mvn clean install -T 2C -DskipTests -DskipITs -Dmaven.source.skip=true -Dmaven.artifact.threads=10 "$@"; }
mvncit() { echo $1 | xargs | mvnrun clean verify -DfailIfNoTests=false -Dtest=$1 -Dit.test=$1 ; }
mvnct()  { echo $1 | xargs | mvnrun clean test -DfailIfNoTests=false -Dtest=$1 ; }
mvnda()  { mvn org.apache.maven.plugins:maven-dependency-plugin:2.10:analyze ; } # use 2.10 explicitly to ensure java 8 support
mvndt()  { local INCLUDES=$1 ; shift ; mvn dependency:tree -Dverbose -Dincludes=$INCLUDES $@ ; }
mvni()   { mvn install -T 2C -DskipTests -DskipITs ; }
mvnpkg() { mvn package -T 2C -Dmaven.test.skip=true ; }
mvnrun() { echo mvn $@ ; eval mvn $@ ; }
mvnv()   {
    if [ $# -eq 0 ]
    then
        mvn help:evaluate -Dexpression=project.version|grep -Ev '(^\[|Download\w+:)'
    else
        mvn versions:set -DgenerateBackupPoms=false -DnewVersion=$1
    fi
}
mvn_drop_snapshot() {
  CURRENT_VERSION=`mvnv`
  NO_SNAP="${CURRENT_VERSION/-SNAPSHOT/}"
  mvnv ${NO_SNAP}
}
# mvn -pl core/core-common dependency:tree -Dverbose -Dincludes=com.mark43.util.data:data-common
