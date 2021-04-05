  
output "name" {
    value = google_compute_instance.default.*.name
    description = "The names of the instance being created"
}
output "instance_zone" {
    value = google_compute_instance.default.*.zone
    description = "The zone where the instance will be created"
}
