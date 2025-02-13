# || [Implementing Cloud SQL](https://www.cloudskillsboost.google/focuses/19086?parent=catalog) ||

## # Like, comment, share & Don't forget to subscribe [QwikLab Explorers](https://youtube.com/@titashshil?si=RgamNu1dc9jVIbJN) 👍😄🤝

---
## ⚠️ **Disclaimer:**
#### This script and guide are provided for educational purposes to help you understand the lab process. Please ensure you understand the steps before using any scripts. Before using the script, I encourage you to open and review it to understand each step.The goal is to help you learn how to complete the labs effectively while following Qwiklabs' terms of service and YouTube's community guidelines.
---

### Run the following Commands in CloudShell

```
curl -LO raw.githubusercontent.com/Titash-shil/Arcade-Hero-Building-Blocks-Artifact-Registry-I-arc1207/refs/heads/main/qwiklab_explorers_arc1207.sh

sudo chmod +x qwiklab_explorers_arc1207.sh

./qwiklab_explorers_arc1207.sh
```

- Go to `VM instances` From [Here](https://console.cloud.google.com/compute/instances?project=)

### Run the following Commands in `SSH` Window of `wordpress-proxy` :
```
wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy && chmod +x cloud_sql_proxy

export PROJECT_ID=$(gcloud config list --format 'value(core.project)')
ZONE=$(gcloud compute instances list --filter="name=wordpress-proxy" --format "get(zone)" | awk -F/ '{print $NF}')
REGION=${ZONE::-2}
export SQL_CONNECTION=$PROJECT_ID:$REGION:wordpress-db        
./cloud_sql_proxy -instances=$SQL_CONNECTION=tcp:3306 &
```

---

## Congratulations ..!!🎉  You completed the lab shortly..😃💯

## *Well done..!* 👏

## Thank you for visiting... :) 🗯️

## [QwikLab Explorers](https://youtube.com/@titashshil?si=RgamNu1dc9jVIbJN)

## Join to our community [Digital Dominators](https://chat.whatsapp.com/J0o1beFGCHfJ8ZHGKjcqkd)

## Stay Connected with Our Community! 💬 
