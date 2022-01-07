Deploy git branch and set address branch_name.localtest.me

Required nginx and root privileges

### Deploy branch
`bash branch-deploy.sh <repo_name> <branch_name>`  
It's clone repository repo_name on branch branch_name to `/opt/branch-deploy/<branch_name>`
After create nginx config when serve `/opt/branch-deploy/<branch_name>` folder by server_name `<branch_name>.localtest.me`. Config located in `/etc/nginx/conf.d/<branch_name>.localtest.me.conf`  
**Example:**  
`bash branch-deploy.sh git@github.com:AlexeyBerezhnoy/branch-deploy.git main`  


### Clean deploy
`bash branch-deploy-clean.sh <branch_name>`  
It's rm folder `/opt/branch-deploy/<branch_name>` and rm config `/etc/nginx/conf.d/<branch_name>.localtest.me.conf`  
**Example:**  
`bash branch-deploy-clean.sh main`  