@java -server -Xloggc:l1jserver.log -XX:+PrintGCDetails -XX:MetaspaceSize=256m -XX:MaxMetaspaceSize=256m -Xms1024m -Xmx1024m -XX:NewRatio=2 -XX:SurvivorRatio=8 -jar l1jserver.jar
@pause
