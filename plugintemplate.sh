DIR=$1
PLUGINNAME=$2

mkdir ${DIR}
cd ${DIR}
gradle init --type groovy-library

#修改build.gradle
rm build.gradle
echo "buildscript{" >> build.gradle
echo "repositories{" >> build.gradle
echo "maven{url 'http://jcenter.bintray.com'}" >> build.gradle
echo "}\n" >> build.gradle
echo "dependencies{" >>build.gradle
echo "classpath 'com.jfrog.bintray.gradle:gradle-bintray-plugin:0.6'" >> build.gradle
echo "}\n}\n" >> build.gradle
echo "plugins{" >> build.gradle  
echo "id 'groovy'" >>build.gradle
echo "id 'idea'" >>build.gradle
echo "id 'maven'">>build.gradle
echo "id 'maven-publish'">>build.gradle  
echo "}\n" >>build.gradle  
echo "repositories{">>build.gradle
echo "jcenter()">>build.gradle
echo "mavenCentral()}">>build.gradle
echo "dependencies{">>build.gradle
echo "compile localGroovy()">>build.gradle
# echo "testCompile 'org.spockframework:spock-core:1.0-groovy-2.4'">>build.gradle
echo "compile gradleApi()">>build.gradle
echo "}\n">>build.gradle
echo "publishing{">>build.gradle
echo "publications{">>build.gradle
echo "plugin(MavenPublication){">>build.gradle
echo "from components.java">>build.gradle
echo "group 'xxxxxx'">>build.gradle
echo "artifactId 'xxxx'" >>build.gradle
echo "version 'xxxx'">>build.gradle
echo "}\n}\n}">>build.gradle

#删除test目录
cd src
rm -r -f test


#创建plugin class
cd main
echo "import org.gradle.api.Plugin">>groovy/${PLUGINNAME}.groovy
echo "import org.gradle.api.Project">>groovy/${PLUGINNAME}.groovy
echo "class ${PLUGINNAME} implements Plugin<Project>{">>groovy/${PLUGINNAME}.groovy
echo "@Override">>groovy/${PLUGINNAME}.groovy
echo "void apply(Project project){">>groovy/${PLUGINNAME}.groovy
echo "}\n}">>groovy/${PLUGINNAME}.groovy

rm groovy/Library.groovy


#创建resources目录
mkdir -p resources/META-INF/gradle-plugins
cd resources/META-INF/gradle-plugins
echo 'implementation-class=xxxxxxxx' > xxxxxx.properties



