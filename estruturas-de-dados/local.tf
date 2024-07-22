locals {
  resources-prefix = "${var.ambiente}-principal"
  instancia_name = var.ambiente == "production" ? "usuario" : "teste"
  lista_a = ["marketing", "cs", "helper"]
  lista_b = ["seguranca", "engenharia", "design"]
  lista_empresa = concat(local.lista_a, local.lista_b)

  lista_join = join(" + ", local.lista_empresa)

  setores = {
    engenharia : 10
    seguranca: 5
    design: 2
  }

  lista_replace = replace(local.lista_join, "engenharia", "produto")
}

output "lista_empresa" {
  value = local.lista_empresa
}

output "lista_join" {
  value = local.lista_join
}

output "setor_engenharia" {
  value = local.setores.engenharia
}

output "setor_marketing" {
  value = try(local.setores.marketing, 0)
}

output "lista_replace" {
  value = local.lista_replace
}
