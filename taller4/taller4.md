# Taller 4 
#### Big Data
#### ***Víctor Samuel Pérez Díaz***

# 1
---
**3.** ==Ubique el archivo ```etc/hadoop/hadoop-env.sh.``` Liste en su documento de entrega
las variables de entorno que pueden definirse en este archivo de configuración.==

- ``` JAVA_HOME```
- ``` HADOOP_HOME```
- ``` HADOOP_CONF_DIR```
- ``` HADOOP_HEAPSIZE_MAX```
- ``` HADOOP_HEAPSIZE_MIN```
- ``` HADOOP_JAAS_DEBUG```
- ` HADOOP_OPTS`
- `HADOOP_OS_TYPE`
- `HADOOP_CLIENT_OPTS`
- `HADOOP_CLASSPATH`
- `HADOOP_USER_CLASSPATH_FIRST"`
- `HADOOP_CLIENT_CLASSLOADER_SYSTEM_CLASSES`
- `HADOOP_CLIENT_CLASSLOADER_SYSTEM_CLASSES`
-  `HADOOP_OPTIONAL_TOOLS`
-  ` HADOOP_SSH_OPTS`
-  `HADOOP_SSH_PARALLEL`
-  `HADOOP_WORKERS`
-  `HADOOP_LOG_DIR`
-  `HADOOP_IDENT_STRING`
-  `HADOOP_STOP_TIMEOUT`
-  `HADOOP_PID_DIR`
-  `HADOOP_ROOT_LOGGER`
-  `HADOOP_DAEMON_ROOT_LOGGER`
-  `HADOOP_SECURITY_LOGGER`
-  `HADOOP_NICENESS`
-  ` HADOOP_POLICYFILE`
-  ` HADOOP_GC_SETTINGS`
-  `JSVC_HOME`
-  `HADOOP_SECURE_LOG`
-  ` HADOOP_SECURE_IDENT_PRESERVE`
-  `HDFS_AUDIT_LOGGER`
-  `HDFS_NAMENODE_OPTS`
-  ` HDFS_SECONDARYNAMENODE_OPTS`
-  `HDFS_DATANODE_OPTS`
-  `HDFS_DATANODE_SECURE_USER`
-  `HDFS_DATANODE_SECURE_EXTRA_OPTS`
-  `HDFS_NFS3_OPTS`
-  `HDFS_PORTMAP_OPTS`
-  `HDFS_NFS3_SECURE_EXTRA_OPTS`
-  `HDFS_NFS3_SECURE_USER`
-  `HDFS_ZKFC_OPTS`
-  ` HDFS_JOURNALNODE_OPTS`
-  ` HDFS_BALANCER_OPTS`
-  ` HDFS_MOVER_OPTS`
-  `HDFS_DFSROUTER_OPTS`
-  `HDFS_OM_OPTS`
-  `HDFS_STORAGECONTAINERMANAGER_OPTS`
-  `HADOOP_ENABLE_BUILD_PATHS`
-  `HDFS_NAMENODE_USER`
-  ` HADOOP_REGISTRYDNS_SECURE_USER`
-  ` HADOOP_REGISTRYDNS_SECURE_EXTRA_OPTS`

---
**11.** ==Liste los resultados con `cat output/*`. ¿Cómo interpreta los resultados? Descríbalos
en su documento de entrega.==

>      $ cat output/*
>      1       dfsadmin

Copiamos los archivos xml del directorio `etc/hadoop/` a un directorio `input`. Luego buscamos y mostramos todas las coincidencias de la expresión regular dada, que busca todas las combinaciones del conjunto de **a** a **z** y **.**, teniendo a **dfs** como prefijo. El output se escribe en el directorio `output`.

---
**12.** ==Repita el ejercicio anterior con otro conjunto de archivos y otra expresión regular. En
su documento de entrega incluya los archivos de entrada, el comando ejecutado
con la expresión regular, y los archivos de salida con su interpretación==

**Proceso inicial:**
```bash
~/hadoop-3.3.0$ mkdir input
~/hadoop-3.3.0$ cp etc/hadoop/*.sh input
```

**Archivos de entrada:**
```bash
~/hadoop-3.3.0/input$ ls
hadoop-env.sh  httpfs-env.sh  kms-env.sh  mapred-env.sh  yarn-env.sh
```
**Comando ejecutado y salida:**

```bash
~/hadoop-3.3.0$  bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.0.jar grep input output 'HADOOP[A-Z_]*'
~/hadoop-3.3.0$ cat output/*
48      HADOOP_OPTS
8       HADOOP_LOG_DIR
6       HADOOP_HEAPSIZE_MAX
5       HADOOP_HOME
4       HADOOP_IDENT_STRING
4       HADOOP_CONF_DIR
4       HADOOP_
3       HADOOP_GC_SETTINGS
3       HADOOP_USE_CLIENT_CLASSLOADER
3       HADOOP_CLASSPATH
3       HADOOP
2       HADOOP_OS_TYPE
2       HADOOP_CLIENT_CLASSLOADER_SYSTEM_CLASSES
2       HADOOP_USER_CLASSPATH_FIRST
2       HADOOP_PID_DIR
1       HADOOP_YARN_HOME
1       HADOOP_WORKERS
1       HADOOP_STOP_TIMEOUT
1       HADOOP_SSH_PARALLEL
1       HADOOP_SSH_OPTS
1       HADOOP_SECURITY_LOGGER
1       HADOOP_SECURE_PID_DIR
1       HADOOP_SECURE_LOG
1       HADOOP_SECURE_IDENT_PRESERVE
1       HADOOP_ROOT_LOGGER
1       HADOOP_REGISTRYDNS_SECURE_USER
1       HADOOP_REGISTRYDNS_SECURE_EXTRA_OPTS
1       HADOOP_POLICYFILE
1       HADOOP_OPTIONAL_TOOLS
1       HADOOP_JOB_HISTORYSERVER_HEAPSIZE
1       HADOOP_JHS_LOGGER
1       HADOOP_JAAS_DEBUG
1       HADOOP_HEAPSIZE_MIN
1       HADOOP_HDFS_HOME
1       HADOOP_ENABLE_BUILD_PATHS
1       HADOOP_DAEMON_ROOT_LOGGER
1       HADOOP_CLIENT_OPTS
1       HADOOP_NICENESS
```

Copiamos todos los archivos de extensión `.sh` del directorio `etc\hadoop\` a `input`. Encontramos con el comando todas las coincidencias en este conjunto de archivos a la expresión regular dada, que busca todas las combinaciones del conjunto de la **A** a la **Z** con **_**, teniendo como prefijo a **HADOOP**. 

---
# 2
---

**1.** ==Liste los elementos en el sistema de archivos de HDFS==
`hadoop fs -l`
==Incluya sus resultados en su archivo de entrega.==

```bash
Found 32 items
-rw-r--r--   1 ubuntu ubuntu       9213 2020-07-06 19:33 capacity-scheduler.xml
-rw-r--r--   1 ubuntu ubuntu       1335 2020-07-06 19:34 configuration.xsl
-rw-r--r--   1 ubuntu ubuntu       2567 2020-07-06 19:33 container-executor.cfg
-rw-r--r--   1 ubuntu ubuntu        774 2020-07-06 18:46 core-site.xml
-rw-r--r--   1 ubuntu ubuntu       3999 2020-07-06 18:46 hadoop-env.cmd
-rw-r--r--   1 ubuntu ubuntu      16984 2021-02-21 23:59 hadoop-env.sh
-rw-r--r--   1 ubuntu ubuntu       3321 2020-07-06 18:46 hadoop-metrics2.properties
-rw-r--r--   1 ubuntu ubuntu      11765 2020-07-06 18:46 hadoop-policy.xml
-rw-r--r--   1 ubuntu ubuntu       3414 2020-07-06 18:46 hadoop-user-functions.sh.example
-rw-r--r--   1 ubuntu ubuntu        683 2020-07-06 18:56 hdfs-rbf-site.xml
-rw-r--r--   1 ubuntu ubuntu        775 2020-07-06 18:51 hdfs-site.xml
-rw-r--r--   1 ubuntu ubuntu       1484 2020-07-06 18:55 httpfs-env.sh
-rw-r--r--   1 ubuntu ubuntu       1657 2020-07-06 18:55 httpfs-log4j.properties
-rw-r--r--   1 ubuntu ubuntu        620 2020-07-06 18:55 httpfs-site.xml
-rw-r--r--   1 ubuntu ubuntu       3518 2020-07-06 18:47 kms-acls.xml
-rw-r--r--   1 ubuntu ubuntu       1351 2020-07-06 18:47 kms-env.sh
-rw-r--r--   1 ubuntu ubuntu       1860 2020-07-06 18:47 kms-log4j.properties
-rw-r--r--   1 ubuntu ubuntu        682 2020-07-06 18:47 kms-site.xml
-rw-r--r--   1 ubuntu ubuntu      14032 2020-07-06 18:46 log4j.properties
-rw-r--r--   1 ubuntu ubuntu        951 2020-07-06 19:34 mapred-env.cmd
-rw-r--r--   1 ubuntu ubuntu       1764 2020-07-06 19:34 mapred-env.sh
-rw-r--r--   1 ubuntu ubuntu       4113 2020-07-06 19:34 mapred-queues.xml.template
-rw-r--r--   1 ubuntu ubuntu        758 2020-07-06 19:34 mapred-site.xml
drwxr-xr-x   - ubuntu ubuntu       4096 2020-07-06 18:46 shellprofile.d
-rw-r--r--   1 ubuntu ubuntu       2316 2020-07-06 18:46 ssl-client.xml.example
-rw-r--r--   1 ubuntu ubuntu       2697 2020-07-06 18:46 ssl-server.xml.example
-rw-r--r--   1 ubuntu ubuntu       2681 2020-07-06 18:51 user_ec_policies.xml.template
-rw-r--r--   1 ubuntu ubuntu         10 2020-07-06 18:46 workers
-rw-r--r--   1 ubuntu ubuntu       2250 2020-07-06 19:33 yarn-env.cmd
-rw-r--r--   1 ubuntu ubuntu       6329 2020-07-06 19:33 yarn-env.sh
-rw-r--r--   1 ubuntu ubuntu        690 2020-07-06 19:33 yarn-site.xml
-rw-r--r--   1 ubuntu ubuntu       2591 2020-07-06 19:33 yarnservice-log4j.properties
```
---
**4.** ==Copie el archivo desde HDFS a una carpeta temporal con la opción copyToLocal.
Incluya el comando usado en su archivo de entrega.==

```bash
hadoop fs -copyToLocal reflection.txt ~/temp/reflection.txt
```

---
**5.** ==Cree una carpeta canciones en HDFS con la opción mkdir. Incluya el comando
usado en su archivo de entrega.==

```bash
hadoop fs -mkdir canciones
```

**6.** ==Dentro de la carpeta creada copie un archivo de texto con el nombre de una canción.
Liste el resultado. Incluya los comandos usados y el resultado que muestre el archivo
creado en su archivo de entrega.==

```bash
~$ hadoop fs -copyFromLocal reflection.txt canciones/reflection.txt
~$ hadoop fs -ls canciones
Found 1 items
-rw-r--r--   1 ubuntu ubuntu          0 2021-02-22 00:13 canciones/reflection.txt
```