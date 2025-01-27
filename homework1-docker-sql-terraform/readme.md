# Docker & SQL Homework

This repository contains the solutions for the Docker and SQL Homework from the DataTalksClub Data Engineering Zoomcamp.

## Questions and Solutions

### Question 1: Docker First Run
- **Answer:** `23.2.1`
- **Command:**
  ```bash
  docker run -it --entrypoint bash python:3.12.8


### Question 2: Docker Networking
- **Answer:** `db:5432`

### Question 3: Trip Segmentation Count
- **Answer:** `104,793; 201,407; 110,612; 27,831; 35,281`

### Question 4: Longest Trip
- **Answer:** `2019-10-24`

### Question 5: Biggest Pickup Zones
- **Answer:** `East Harlem North, East Harlem South, Morningside Heights`

### Question 6: Largest Tip
- **Answer:** `JFK Airport`

### Question 7: Terraform Workflow
- **Answer:** `terraform init, terraform apply -auto-approve, terraform destroy`
- **Command:**
  ```bash
terraform init
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve


## File Structure
- `docker/`: Contains Docker-related files (Dockerfile, docker-compose.yaml).
- `sql/`: Contains SQL queries and data files.
- `terraform/`: Contains Terraform configuration files.
