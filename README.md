## `README.md`

# gnuhealth-thalamus_ynh (squelette)
## Arborescence

gnuhealth-thalamus_ynh/
├─ manifest.toml
├─ scripts/
│  ├─ _common.sh
│  ├─ install
│  ├─ remove
│  ├─ backup
│  ├─ restore
│  ├─ change_url
│  └─ upgrade
├─ conf/
│  ├─ nginx.conf
│  ├─ thalamus_uwsgi.ini
│  ├─ thalamus.service
│  └─ thalamus.cfg.j2
├─ doc/
│  ├─ DESCRIPTION.md
│  └─ DESCRIPTION_fr.md
└─ README.md

### Installation locale de test

```bash
yunohost app install /chemin/vers/gnuhealth-thalamus_ynh --debug
```

Répondre aux questions (domaine + chemin).

### Post-install

- Vérifier le service : `systemctl status gnuhealth-thalamus`
- Tester un endpoint (ex. au besoin après init des données démo) : `curl -k https://domaine.tld/thalamus/people`

### Connexion depuis MyGNUHealth

- Installer MyGNUHealth (Flatpak) sur le poste client
- Dans les préférences MyGNUHealth, définir l'URL de la fédération : `https://domaine.tld/thalamus/`
- Créer/assigner des identifiants selon la doc Thalamus (rôles/ACL)

### TODO
- Scripts `backup/restore` plus complets (ACL, rôles, etc.)
- Tests CI (CI app catalog)
- Port interne dynamique (`ynh_find_port`)
- Durcir CORS, en-têtes de sécurité, Fail2ban