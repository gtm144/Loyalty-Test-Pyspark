    1  sudo apt update && upgrade
    2  sudo apt-get install openjdk-11-jre
    3  sudo apt-get install openjdk-11-jdk
    4  sudo apt install python3 python3-pip ipython3
    5  pip3 install jupyter py4j pyspark
    7  wget https://downloads.lightbend.com/scala/2.13.3/scala-2.13.3.tgz
    8  tar xvf scala-2.13.3.tgz
   10  scala -version
   32  wget https://archive.apache.org/dist/spark/spark-3.1.1/spark-3.1.1-bin-hadoop3.2.tgz
   33  tar xvf spark-3.1.1-bin-hadoop3.2.tgz
   34  vim .profile 
   35  cd spark-3.1.1-bin-hadoop3.2/
   38  ./sbin/start-master.sh
   39  ./sbin/start-worker.sh spark://ubuntu1:7077
   40  spark-shell
   52  notebook
   53  jupyter-notebook
   54  la
   74  ./sbin/stop-master.sh
   75  ./sbin/stop-worker.sh
