sudo docker build -t my_pyspark .
sudo docker run --rm -it -p 8888:8888 -p 4040:4040 -v $PWD:/app my_pyspark jupyter notebook --ip 0.0.0.0 --no-browser --allow-root

