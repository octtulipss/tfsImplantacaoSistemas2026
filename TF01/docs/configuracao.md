# Relatório de Configuração e Infraestrutura Web

## 1. Estrutura do Servidor Web (PetVital)
Para o ambiente de produção da clínica veterinária PetVital, optou-se pela utilização do servidor **Nginx** devido à sua alta performance no carregamento de páginas estáticas e estabilidade.
- **Virtual Host:** Configurado em `/etc/nginx/sites-available/technova.conf`.
- **Diretório de Publicação (Document Root):** `/var/www/technova`.
- **Tratamento de Erros:** Rotas não encontradas são interceptadas e redirecionadas para uma página `404.html` personalizada, mantendo a navegação do usuário (tutor) amigável.

## 2. Política de Segurança e Permissões
Considerando que o sistema lida com informações de tutores e prontuários veterinários, aplicamos o princípio do **menor privilégio** no sistema de arquivos Linux:
- **Ownership (Propriedade):** O diretório do site pertence ao usuário do sistema que realiza o deploy, enquanto o grupo foi definido para `www-data` (usuário padrão do serviço Nginx).
- **Modo de Permissão (750):** - O proprietário possui permissões totais de leitura, gravação e execução (`rwx`).
  - O Nginx (grupo `www-data`) possui apenas permissão de leitura e execução para servir as páginas (`r-x`).
  - Outros usuários do sistema não têm nenhum tipo de acesso (`---`), garantindo o isolamento e a segurança dos dados da clínica.

## 3. Automação do Deploy
Para garantir a padronização e evitar falhas humanas durante as atualizações do portal da PetVital, foi desenvolvido um shell script (`install.sh`). 
Este script é responsável por:
1. Limpar o cache e arquivos antigos do diretório web.
2. Reaplicar as permissões e ownership corretos na pasta `/var/www/technova`.
3. Sincronizar os novos arquivos HTML/CSS de forma automática.
4. Reiniciar o serviço do Nginx (`systemctl restart nginx`) de forma atômica para aplicar as mudanças sem tempo de inatividade prolongado.