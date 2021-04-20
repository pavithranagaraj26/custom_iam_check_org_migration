gcloud iam roles update myCompanyAdmin --organization=123456789012 \
  --stage=DISABLED

  
gcloud iam roles create myCompanyAdmin --project=ia-devops  --file=my-role-definition.yaml

gcloud iam roles describe myCompanyAdmin --project=ia-devops

gcloud iam roles update myCompanyAdmin --project=ia-devops --stage=DISABLED
gcloud iam roles update myCompanyAdmin --project=ia-devops --stage=DISABLED

gcloud iam roles delete myCompanyAdmin --project=ia-devops