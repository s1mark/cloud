output "email" {
  description = "The service account email."
  value       = module.service_accounts.service_account.email
}