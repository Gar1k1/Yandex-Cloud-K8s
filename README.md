Cloud-K8s-Deployment

Описание

Этот проект автоматизирует развертывание инфраструктуры Kubernetes в Yandex Cloud с помощью Terraform. Он включает:

Создание сервисного аккаунта и назначение IAM-ролей.

Развертывание кластера Managed Kubernetes.

Настройку сети и хранилища для контейнеров (Container Registry).

Основные технологии

✅ Terraform – управление инфраструктурой как кодом (IaC).

✅ Yandex Cloud Managed Kubernetes – кластер Kubernetes в облаке.

✅ Container Registry – хранение Docker-образов.

Структура проекта

~/Yandex-Cloud-K8s/
├── manifests/
│   └── kubernetes.tf
└── terraform/
    ├── backend.tf
    ├── outputs.tf
    ├── register.tf
    ├── variables.auto.tfvars
    ├── variables.tf
    └── vpc.tf

🚀 DevOps junior: Garik Biarslanov
