provider "aws" {
  region = "us-west-1"
}

module "aws_accesstier" {
  source                 = "../"
  region                 = "us-west-1"
  vpc_id                 = "vpc-0b77ecfc337556682"
  public_subnet_ids      = ["subnet-0579b290347746288", "subnet-07169a438eca6c5b8"]
  private_subnet_ids     = ["subnet-01bae099f5dec6137", "subnet-0682dbb064270f47f"]
  cluster_name           = "uswest"
  site_name              = "dev-redseal-uswest1"
  site_domain_names      = ["*.access.dev.preview.redseal.net"]
  ssh_key_name           = "banyan-test"
  refresh_token          = "eyJhbGciOiJSUzI1NiIsImtpZCI6IjYyODVlZDRmOGViZmIzNzJlMDU1YzYyZTFlNWUxNGU3MjQwYjkwNGEiLCJ0eXAiOiJKV1QifQ.eyJBY2Nlc3NUb2tlbiI6ImxldmVsMSIsIkVtYWlsIjoiIiwiTm9WUE4iOiJESVNBQkxFRCIsIk9yZ0lEIjoiIiwiUHJvZmlsZSI6IlJlYWRPbmx5IiwiVVVJRCI6IiIsIlVuaXF1ZUlEIjoiMTNmNzRhOTEtOWU1Yy00YzU0LTkxYjItNThmNDZmYjIwMjQxIiwiZXhwIjoxNjE4MzkyODc5fQ.KGa-j0x9oGmp7xA8yvlRKI4f-n13HAfGdrd2wET5EkwgIVOHcZl4b6uOIytjBXDGr5OUsQmeMwkK4y6UybViVw2tSrEPVolWmbzPnNiWu2GswHUVO07BmldgP4n1Fx8uYdO4XY9SFOFM3HP2bT3ZxNbKsWrrUoo9VPSISX5kYwAT4FBHdl8OxGymZCDB65r_JNHJstjpeBtwFmP4t0jUPDxemzFUIM7PQRToO0qGyU0eQFQb7KHuNur2PfiIH2AucnN6ct1g-bcB5ua2GC9g-QFhf0aURLS_hF2itrWCamdnyHeaIwhEIhSF4dX5cZXGF3h1X6DXbEFAwyte4_Tn-g"
  redirect_http_to_https = true
}
