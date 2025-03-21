data "yandex_iam_service_account" "piggymetrics_sa" {
  name = var.piggymetrics_sa
}

resource "yandex_resourcemanager_folder_iam_member" "editor" {
  folder_id = var.folder_id
  role      = "editor"
  member    = "serviceAccount:${data.yandex_iam_service_account.piggymetrics_sa.id}"
}

resource "yandex_resourcemanager_folder_iam_member" "images_puller" {
  folder_id = var.folder_id
  role      = "container-registry.images.puller"
  member    = "serviceAccount:${data.yandex_iam_service_account.piggymetrics_sa.id}"
}

resource "yandex_resourcemanager_folder_iam_member" "images_pusher" {
  folder_id = var.folder_id
  role      = "container-registry.images.pusher"
  member    = "serviceAccount:${data.yandex_iam_service_account.piggymetrics_sa.id}"
}
