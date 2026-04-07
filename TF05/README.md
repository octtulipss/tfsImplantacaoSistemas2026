# TF05 - Sistema de Monitoramento e Automação Avançada

Este projeto implementa um ecossistema de monitoramento com healthchecks inteligentes, dashboard em tempo real e automação completa de deploy com estratégias de rollback e backup.

## Aluno
- **Nome:** Giovanna Sabino da Silva
- **RA:** 6324089
- **Curso:** Análise e Desenvolvimento de Sistemas - 5º Semestre
- **Instituição:** UniFAAT
- **Disciplina:** Implementação de Software

## Funcionalidades Implementadas
- Healthchecks inteligentes avançados (HTTP, TCP, Database) com resposta de performance.
- Dashboard visual de monitoramento em tempo real (HTML/CSS/JS).
- API em Python (Flask) para coleta e histórico de métricas.
- Sistema de alertas e gatilhos (email, webhook) baseado em mudanças de estado.
- Automação completa de containers utilizando Docker Compose.
- Scripts de manutenção avançados (Backup automatizado, Limpeza Segura, Rollback e Monitoramento via Terminal).

## Como Executar

### Pré-requisitos
- Docker e Docker Compose instalados.
- Ambiente Bash (Linux/Mac/WSL/Git Bash) para os scripts de automação.

### Passos para Execução

1. **Subir a infraestrutura e API:**
   ```bash
   docker compose up -d --build
