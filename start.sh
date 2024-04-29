gcloud functions deploy insert_data --source backend/cloud-functions/database-insertion/  --runtime python311 --region us-east1 --trigger-http --allow-unauthenticated --gen2 &
gcloud functions deploy calculate_mean --source backend/cloud-functions/party-1/  --runtime python311 --region us-east1 --trigger-http --allow-unauthenticated --gen2 &
gcloud functions deploy party2_sum --source backend/cloud-functions/party-2/  --runtime python311 --region us-east1 --trigger-http --allow-unauthenticated --gen2 &
gcloud functions deploy party3_sum --source backend/cloud-functions/party-3/  --runtime python311 --region us-east1 --trigger-http --allow-unauthenticated --gen2 &
gcloud functions deploy generate_beaver_triples --source backend/cloud-functions/generate-triples/  --runtime python311 --region us-east1 --trigger-http --allow-unauthenticated --gen2 --set-env-vars PK1=2b92b7818b67ab8b44584e0190324e1a1d9d60ae451248b51f45133ee9948575,PK2=76d845eb1bb6af9ab612e6ae70092e67a48ad8b6ea498b399ae9bdf7dcdd9f00 &
gcloud functions deploy party2_beaver_mask --source backend/cloud-functions/party-2/  --runtime python311 --region us-east1 --trigger-http --allow-unauthenticated --gen2 --set-env-vars SK1=a87fdd552ad9b7c143f4fe27bf1a83d02e1e7f48549e40a396aab5e2d908fd59 &
gcloud functions deploy party3_beaver_mask --source backend/cloud-functions/party-3/  --runtime python311 --region us-east1 --trigger-http --allow-unauthenticated --gen2 --set-env-vars SK2=775236c3be6ab91f6f6ffbad702e8227c98c16d851f8e4e17302b19c8e08e666 &
gcloud functions deploy party2_beaver_compute --source backend/cloud-functions/party-2/  --runtime python311 --region us-east1 --trigger-http --allow-unauthenticated --gen2 --set-env-vars SK1=a87fdd552ad9b7c143f4fe27bf1a83d02e1e7f48549e40a396aab5e2d908fd59 &
gcloud functions deploy party3_beaver_compute --source backend/cloud-functions/party-3/  --runtime python311 --region us-east1 --trigger-http --allow-unauthenticated --gen2 --set-env-vars SK2=775236c3be6ab91f6f6ffbad702e8227c98c16d851f8e4e17302b19c8e08e666 &
gcloud functions deploy calculate_standard_deviation --source backend/cloud-functions/party-1/  --runtime python311 --region us-east1 --trigger-http --allow-unauthenticated --gen2
gcloud functions deploy calculate_correlation --source backend/cloud-functions/party-1/  --runtime python311 --region us-east1 --trigger-http --allow-unauthenticated --gen2