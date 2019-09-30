workflow "Build and deploy on push" {
  on = "push"
  resolves = ["GitHub Action for Google Cloud"]
}

action "GitHub Action for Google Cloud SDK auth" {
  uses = "actions/gcloud/auth@6a43f01e0e930f639b90eec0670e88ba3ec4aba3"
  secrets = ["GCLOUD_AUTH"]
}

action "GitHub Action for Google Cloud" {
  uses = "actions/gcloud/cli@6a43f01e0e930f639b90eec0670e88ba3ec4aba3"
  needs = ["GitHub Action for Google Cloud SDK auth"]
  runs = ""
}
