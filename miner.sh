#!/bin/bash
while :
do
echo "Restarting Docker"
systemctl restart docker
echo "Welcome Starting Miner"
sudo docker run -it --publish 31234:31234 -v 9c-volume1:/app/data \
--publish 127.0.0.1:23061:23061 \
planetariumhq/ninechronicles-headless:latest \
-V=100026/6ec8E598962F1f475504F82fD5bF3410eAE58B9B/MEUCIQC4ow4ldpnec3OTotdKpfV6BILL.F0chj36oSpwEV5.RgIgFWZIE1.KzuEmE$
-G=https://9c-test.s3.ap-northeast-2.amazonaws.com/genesis-block-9c-main \
-D=5000000 \
--store-type=rocksdb --store-path=/app/data \
--peer=027bd36895d68681290e570692ad3736750ceaab37be402442ffb203967f98f7b6,9c-main-seed-1.planetarium.dev,31234 \
--peer=02f164e3139e53eef2c17e52d99d343b8cbdb09eeed88af46c352b1c8be6329d71,9c-main-seed-2.planetarium.dev,31234 \
--peer=0247e289aa332260b99dfd50e578f779df9e6702d67e50848bb68f3e0737d9b9a5,9c-main-seed-3.planetarium.dev,31234 \
--trusted-app-protocol-version-signer=03eeedcd574708681afb3f02fb2aef7c643583089267d17af35e978ecaf2a1184e \
--workers=50 \
--confirmations=0 \
--libplanet-node \
--ice-server=turn://0ed3e48007413e7c2e638f13ddd75ad272c6c507e081bd76a75e4b7adc86c9af:0apejou+ycZFfwtREeXFKdfLj2gCclK$
--ice-server=turn://0ed3e48007413e7c2e638f13ddd75ad272c6c507e081bd76a75e4b7adc86c9af:0apejou+ycZFfwtREeXFKdfLj2gCclK$
--ice-server=turn://0ed3e48007413e7c2e638f13ddd75ad272c6c507e081bd76a75e4b7adc86c9af:0apejou+ycZFfwtREeXFKdfLj2gCclK$
--graphql-server \
--graphql-port=23061 \
--private-key=46e089929e867ab26b4a440cd9bc850360a3bac5ba17e8c4473bbe3e553605e5
echo "Ended"
done