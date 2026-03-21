# Lab 03: Workspaces & Lifecycle

## Steps

1. Initialize: `terraform init`
2. Create 'dev' workspace: `terraform workspace new dev`
3. Verify workspace: `terraform workspace list`
4. Apply: `terraform apply -var="project_id=YOUR_PROJECT"`
5. Switch back: `terraform workspace select default`

## Notes

- The bucket name will include the workspace suffix.
- The `lifecycle` block ensures operational safety.
