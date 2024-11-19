## Playbook `deploy_web_server.yml`
- Copy BAQSTRT.jcl to `USER.PROCLIB`
- Copy server.xml to `/var/zosconnect2/servers/SERVER1` 
- Copy bank.war to `/var/zosconnect/servers2/SERVER1/apps` 
- Stop BAQSTRT using zos system command `C BAQSTRT.jcl`
- Start BAQSTRT using zos system command `S BAQSTRT.jcl`