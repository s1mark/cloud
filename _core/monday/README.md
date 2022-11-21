# Tasks

## Create bucket
Create your own storage bucket through the UI
- https://console.cloud.google.com/storage/browser?project=ekke-cloud
Properties of the bucket:
- Name should be your Neptun code
- Simple region (`europe-central2`)
- Everthing else default

## Use remote state file
You will have to store your terraform state file in the created bucket

## Create codebase
Store your code in the https://github.com/s1mark/cloud repository under your personal folder
- `<personal_folder>/beadando/`

## Create a service account
The name of the service account should be your Neptun code.

## Create VM
Create a simple VM with the following properties:
- name: `<neptun_code>`
- machine_type: `f1-micro`
- zone: `europe-central2-a`

## Assign service account to VM
You should grant your service account to the VM with the `monitoring` scope

## Create a file on the VM
When creating the VM also create the following file:
- `~/task`
- content of the file: `done`

## Create a disk
Create the following disk:
- name: `<neptun_code>`
- type: `pd-standard`
- zone: `europe-central2-a`
- image: `debian-11-bullseye-v20220719`
- size: `10`
- physical_block_size_bytes: `4096`

## Attach disk to VM
Attach the created disk to the VM