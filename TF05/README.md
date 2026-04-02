# TF05 - Sistema de Monitoramento e Automação Avançada

Este projeto implementa um ecossistema de monitoramento com healthchecks inteligentes, dashboard em tempo real e automação completa de deploy com estratégias de rollback e backup.

## Aluno
- **Nome:** Giovanna Sabino da Silva
- **RA:** 6324089
- **Curso:** Análise e Desenvolvimento de Sistemas - 5º Semestre
- **Instituição:** UniFAAT
- **Disciplina:** Implementação de Software

## 🚀 Funcionalidades Implementadas
- **Healthchecks Inteligentes:** Verificações automáticas de HTTP (API/Frontend) e Database (MySQL).
- **Dashboard Real-time:** Interface para visualização de Uptime e Tempo de Resposta.
- **Automação de Build:** Script centralizado para geração de imagens Docker sem cache.
- **Deploy Zero Downtime:** Estratégia de atualização com validação de saúde pós-instalação.
- **Rollback Automático:** Retorno imediato ao estado estável em caso de falha no deploy.
- **Manutenção:** Scripts para limpeza de recursos e logs antigos.

## 🛠️ Tecnologias Utilizadas
- **Backend:** Python (Flask)
- **Frontend:** HTML5, CSS3, JS (Chart.js)
- **Banco de Dados:** MySQL 8.0
- **Orquestração:** Docker & Docker Compose
- **Automação:** Shell Script (Bash)

## 📦 Como Executar

### 1. Clonar e Acessar
```bash
git clone [https://github.com/SeuUsuario/tfsImplantacaoSistemas2026.git](https://github.com/SeuUsuario/tfsImplantacaoSistemas2026.git)
cd TF05