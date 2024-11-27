# 📜 **Scripts SQL**  

🎉 Bem-vindo à pasta de **scripts SQL**! Aqui você encontrará os arquivos necessários para configurar, manipular e consultar o banco de dados do projeto. Tudo está organizado para facilitar o uso, seja na criação inicial ou na manutenção do banco de dados.

---

## 📂 **Estrutura dos Scripts**  

1. **`concessao_acesso.sql`** 🛡️  
   - **Função**: Configura permissões de acesso ao banco de dados.  
   - **Uso**: Define os níveis de acesso apropriados para usuários ou aplicações.  

2. **`consultas_banco.sql`** 🔍  
   - **Função**: Conjunto de consultas SQL para análises e verificações de dados.  
   - **Uso**: Suporte para operações e validação de informações no banco.  

3. **`criacao.sql`** 🏗️  
   - **Função**: Cria as tabelas do banco e define seus relacionamentos.  
   - **Uso**: Execute este script primeiro para preparar o ambiente.  

4. **`inserts_tabelas.sql`** ✍️  
   - **Função**: Insere dados iniciais nas tabelas criadas.  
   - **Uso**: Popular as tabelas com informações base para testes e uso do sistema.  

---

## 🛠️ **Como Utilizar os Scripts**  

1. Verifique se o banco de dados está configurado e acessível.  
2. Execute os scripts na seguinte ordem:  
   1. `criacao.sql`  
   2. `inserts_tabelas.sql`  
   3. Use `concessao_acesso.sql` e `consultas_banco.sql` conforme necessário.  
3. Utilize um cliente SQL compatível, como **MySQL Workbench**, **DBeaver**, ou **phpMyAdmin**.  

---

## ⚠️ **Observações Importantes**  

- Personalize o script de concessão de acesso (`concessao_acesso.sql`) com base nas políticas de segurança da sua organização.  
- Consulte o administrador do banco de dados antes de aplicar qualquer alteração em um ambiente de produção.  
- Mantenha um backup atualizado antes de executar alterações significativas.  
