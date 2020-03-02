#!/bin/bash

# Update an entry
sudo docker exec -e “CORE_PEER_LOCALMSPID=Org1MSP” \
-e “CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp” \
cli \
peer chaincode invoke -o orderer.example.com:7050 -C mychannel -n mycc -c '{"function":"addMarks","Args":["i003","33333333","27","33"]}'
