terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.3"
    }
  }
}

# Crée un premier fichier
resource "local_file" "test_file1" {
  content  = "Plan de test Module 1 - fichier 1"
  filename = "test1.txt"
}

# Crée un deuxième fichier
resource "local_file" "test_file2" {
  content  = "Plan de test Module 1 - fichier 2"
  filename = "test2.txt"
}

# Crée un troisième fichier pour simuler un changement
resource "local_file" "test_file3" {
  content  = "Plan de test Module 1 - fichier 3 avec modification"
  filename = "test3.txt"
}
