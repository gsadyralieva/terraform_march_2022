variable  "env" { 
   type = string
   description = "This variable represents the env such as dev, qa and prod"
   default = true
}

  
variable "publicly_accessible" {
    type = bool
    default = false
}