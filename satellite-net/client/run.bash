
python3 ./sate.py -client=eth0 -line=1 &

iperf3 -c 172.17.0.2 -u -b 200m -i 5 -t 500 >> ./iperf.txt &

python ./ping.py -ip=172.17.0.2 -name=pinglog.log&