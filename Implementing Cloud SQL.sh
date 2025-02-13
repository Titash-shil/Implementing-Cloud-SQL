ZONE=$(gcloud compute instances list --filter="name=wordpress-proxy" --format "get(zone)" | awk -F/ '{print $NF}')

REGION=${ZONE::-2}

gcloud services enable servicenetworking.googleapis.com 
gcloud services enable servicemanagement.googleapis.com
export PROJECT_ID=$(gcloud config list --format 'value(core.project)')

gcloud compute addresses create default-ip-rangeee \
    --global \
    --purpose=VPC_PEERING \
    --prefix-length=24 \
    --description="SQL" \
    --network=default

gcloud services vpc-peerings connect \
    --service=servicenetworking.googleapis.com \
    --ranges=default-ip-rangeee \
    --network=default

gcloud beta sql instances create wordpress-db --database-version=MYSQL_5_7 --cpu=1 --memory=3840MB --region=$REGION --root-password=password123 --network=projects/$PROJECT_ID/global/networks/default --allocated-ip-range-name=default-ip-rangeee

gcloud sql databases create wordpress --instance=wordpress-db


gcloud beta compute ssh wordpress-proxy -- -vvv
